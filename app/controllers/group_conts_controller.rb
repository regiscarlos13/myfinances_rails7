# frozen_string_literal: true

class GroupContsController < ApplicationController # :nodoc:
  before_action :set_group_cont, only: %i[show edit update destroy]

  def index
    @group_conts = current_user.group_conts.order(active: :desc)
  end

  def show; end

  def new
    @group_cont = GroupCont.new
  end

  def edit; end

  def create
    @group_cont = GroupCont.new(group_cont_params)

    respond_to do |format|
      if @group_cont.save
        format.html { redirect_to group_cont_url(@group_cont), notice: 'Registro Criado com Sucesso.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @group_cont.update(group_cont_params)
        format.html { redirect_to group_cont_url(@group_cont), notice: 'Registro atualizado com Sucesso.' }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @group_cont.destroy

    respond_to do |format|
      format.html { redirect_to group_conts_url, notice: 'Registro Removido com Sucesso.' }
    end
  end

  private

  def set_group_cont
    @group_cont = GroupCont.find(params[:id])
  end

  def group_cont_params
    params.require(:group_cont).permit(:tipo, :name, :active).merge(user_id: current_user.id)
  end
end
