# frozen_string_literal: true

class ContsController < ApplicationController # :nodoc:
  before_action :set_group_cont
  before_action :set_cont, only: %i[edit update destory]
  def create
    @cont = @group_cont.conts.create(cont_params)
    redirect_to @group_cont, notice: 'Conta Criada com Sucesso.'
  end

  def edit; end

  def destroy
    @cont.destroy
    redirect_to @group_cont, status: 303, notice: 'Conta Removida com Sucesso.'
  end

  def update
    respond_to do |format|
      if @cont.update(cont_params)
        format.html { redirect_to group_cont_url(@group_cont), notice: 'Registro atualizado com Sucesso.' }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  private

  def cont_params
    params.required(:cont).permit(:name, :active)
  end

  def set_group_cont
    @group_cont = GroupCont.find(params[:group_cont_id])
  end

  def set_cont
    @cont = @group_cont.conts.find(params[:id])
  end
end
