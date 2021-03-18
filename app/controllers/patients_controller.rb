class PatientsController < ApplicationController
  URL = "https://challenge-28h.herokuapp.com/doctors/assign"
  def new
    @states = State.all
    @products = Product.all
    @patient = Patient.new
  end

  def create 
    @patient = Patient.new(patient_params)
    if @patient.valid?  
      result = HTTParty.post(URL,
        :body => {
          :name => @patient.full_name,
          :email => @patient.email,
          :date_of_birth => @patient.DOB.to_s,
          :state => @patient.state.abbreviation
        }.to_json,
        :headers => { 'Content-Type' => 'application/json' } )
      if result["status"] == 'success'
        @patient.doctor = result['details']['doctor']
      end
      @patient.save
      redirect_to @patient
    else
      render :new
    end
  end

  def show
    @patient = Patient.find(params[:id])
  end

  private
  def patient_params
    params.require(:patient).permit(:full_name, :DOB, :email, :state_id, :product_id)
  end
end
