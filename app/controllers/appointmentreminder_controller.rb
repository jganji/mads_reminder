# @start snippet
require 'rubygems'
require "twilio-ruby"


class AppointmentreminderController < ApplicationController

  # your Twilio authentication credentials
  ACCOUNT_SID = "ACa038122c33031ae31d7d25bb25a14fda"
  ACCOUNT_TOKEN = "1362b6c6fee2b69af655521a490e5d16"

  # version of the Twilio REST API to use - do not change
  API_VERSION = '2010-04-01'

  # Sandbox phone number
  # or outgoing Caller ID you have purchased through Twilio
  CALLER_ID = "(614) 599-3800"

  #CALLER_PIN only needed to send using sandbox number. Looks like 9999-9999
  CALLER_PIN = "5315-7987"

  # base URL of this application
  BASE_URL = "http://localhost:3000/appointmentreminder"
  def index
  end

  # Use the Twilio REST API to initiate an outgoing call
  def makecall
    if !params['number']
      redirect_to :action => '.', 'msg' => 'Invalid phone number'
    return
    end

    # parameters sent to Twilio REST API
    data = {
      :from => CALLER_ID,
      :to => params['number'],
      :url => BASE_URL + '/reminder',
    }

    begin
      client = Twilio::REST::Client.new(ACCOUNT_SID, ACCOUNT_TOKEN)
      client.account.calls.create data
    rescue StandardError => bang
      redirect_to :action => '.', 'msg' => "Error #{bang}"
    return
    end

    redirect_to :action => '', 'msg' => "Calling #{params['number']}..."
  end
  # @end snippet

  # @start snippet
  # TwiML response that reads the reminder to the caller and presents a
  # short menu: 1. repeat the msg, 2. directions, 3. goodbye
  def reminder
    @post_to = BASE_URL + '/directions'
    render :action => "reminder.xml.builder", :layout => false
  end
  # @end snippet

  # @start snippet
  # TwiML response that inspects the caller's menu choice:
  # - says good bye and hangs up if the caller pressed 3
  # - repeats the menu if caller pressed any other digit besides 2 or 3
  # - says the directions if they pressed 2 and redirect back to menu
  def directions
    if params['Digits'] == '3'
      redirect_to :action => 'goodbye'
    return
    end

    if !params['Digits'] or params['Digits'] != '2'
      redirect_to :action => 'reminder'
    return
    end

    @redirect_to = BASE_URL + '/reminder'
    render :action => "directions.xml.builder", :layout => false
  end
  # @end snippet

  # TwiML response saying with the goodbye message. Twilio will detect no
  # further commands after the Say and hangup
  def goodbye
    render :action => "goodbye.xml.builder", :layout => false
  end

end
