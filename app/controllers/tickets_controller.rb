class TicketsController < ApplicationController
  before_action :set_ticket, only: [:show, :edit, :update, :destroy]

  # GET /tickets
  # GET /tickets.json
  def index
    @tickets = Ticket.all
  end

  # GET /tickets/1
  # GET /tickets/1.json
  def show
  end

  # GET /tickets/new
  def new
    @ticket = Ticket.new
  end

  # GET /tickets/1/edit
  def edit
  end

  # POST /tickets
  # POST /tickets.json
  def create

    user = User.find(current_user.id)
    p 'hola user' *10
    p user.departament_id
    p ticket_params[:name]
     p 'hola user' *10
    @ticket = Ticket.create(name: ticket_params[:name],  description: ticket_params[:description], departament_id: user.departament_id)
    p 'buchon' *100
    p session[:user_id] 
        p 'buchon' *100
    p params 
    p @ticket

    #crear la asignación
    @assignment = Assignment.create(status: "iniciado", description: @ticket.description, user_id: current_user.id, ticket_id: @ticket.id)

    #mostrar mensaje de creada la asignación
    p "*" * 50
    p @assignment.ticket_id
    # respond_to do |format|
    #   if @assignment
    #     format.html { redirect_to @ticket, notice: 'Ticket was successfully created.' }
    #     format.json { render :show, status: :created, location: @ticket }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @ticket.errors, status: :unprocessable_entity }
    #   end
    # end

    respond_to do |format|
        if @assignment.save
          format.html { redirect_to assignments_path, notice: 'Assignment was successfully created.' }
          format.json { render :index, status: :created, location: @assignment }
         #assignments_path 
        else
          format.html { render :new }
          format.json { render json: @assignment.errors, status: :unprocessable_entity }
        end
      end
    end    


  # PATCH/PUT /tickets/1
  # PATCH/PUT /tickets/1.json
  def update
    respond_to do |format|
      if @ticket.update(ticket_params)
        format.html { redirect_to @ticket, notice: 'Ticket was successfully updated.' }
        format.json { render :show, status: :ok, location: @ticket }
      else
        format.html { render :edit }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tickets/1
  # DELETE /tickets/1.json
  def destroy
    @ticket.destroy
    respond_to do |format|
      format.html { redirect_to tickets_url, notice: 'Ticket was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket
      @ticket = Ticket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ticket_params
      params.require(:ticket).permit(:name, :description, :departament_id)
    end

    def assignment_params
      params.require(:assignment).permit(:status, :description, :user_id, :ticket_id)
    end
    
end
