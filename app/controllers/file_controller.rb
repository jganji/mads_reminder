  require 'csv'
  
class FileController < ApplicationController
  def import
  end

  def upload
    table = ImportTable.new :original_path => params[:upload][:csv].original_filename 
    uploaded_file = params[:upload][:csv].read
row_index = 0
CSV.parse(uploaded_file) do |cells|
  
    
    #FasterCSV.parse(params[:upload][:csv]) do |cells|
      column_index = 0
      cells.each do |cell|
        table.import_cells.build :column_index => column_index, :row_index => row_index, :contents => cell
        column_index += 1
      end
      row_index += 1
    end
    table.save
    redirect_to import_table_path(table)
  end

end
