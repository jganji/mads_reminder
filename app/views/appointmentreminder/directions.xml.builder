xml.instruct!
xml.Response do
    xml.Say "Your appointment is located in a building near a road."
    xml.Redirect @redirect_to
end
