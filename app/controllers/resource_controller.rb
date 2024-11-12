class Api::ResourceController < ApplicationController
  before_action :set_resource, only: [:show, :update, :destroy]

  def index
    resources = resource_class.all
    render json: resources
  end

  def show
    render json: @resource
  end

  def create
    @resource = resource_class.new(resource_params)
    if @resource.save
      render json: @resource, status: :created
    end
  end

  def update
    if @resource.update(resource_params)
      render json: @resource
    else
      render json: {errors: @resource.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @resource.destroy
    head :no_content
  end

  private

  def set_resource
    @resource = resource_class.find(params[:id])
  end

  # 리소스 클래스를 정의하는 메서드
  # 개별 컨트롤러에서 오버라이드하여 사용할 수 있습니다.
  def resource_class
    raise NotImplementedError, "You must define 'resource_class' in each resource controller"
  end

  # 허용된 파라미터 정의
  def resource_params
    raise NotImplementedError, "You must define 'resource_params' in each resource controller"
  end
end
