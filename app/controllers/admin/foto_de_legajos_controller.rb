class Admin::FotoDeLegajosController < Admin::CoreController

  before_filter :get_legajo

  # GET /foto_de_legajos
  # GET /foto_de_legajos.xml
  def index
    @foto_de_legajos = @legajo.foto_de_legajos.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @foto_de_legajos }
    end
  end

  # GET /foto_de_legajos/1
  # GET /foto_de_legajos/1.xml
  def show
    @foto_de_legajo = @legajo.foto_de_legajos.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @comentario }
    end
  end

  # GET /foto_de_legajos/new
  # GET /foto_de_legajos/new.xml
  def new
    @foto_de_legajo = @legajo.foto_de_legajos.build
    #@comentario = @linea.comentarios.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @foto_de_legajo }
    end
  end

  # GET /foto_de_legajos/1/edit
  def edit
    @foto_de_legajo = @legajo.foto_de_legajos.find(params[:id])
  end

  # POST /foto_de_legajos
  # POST /foto_de_legajos.xml
  def create
    @foto_de_legajo = @legajo.foto_de_legajos.new(params[:foto_de_legajo])

    respond_to do |format|
      if @foto_de_legajo.save
        format.html { redirect_to(admin_legajo_foto_de_legajos_path, :notice => 'FotoDeLegajo was successfully created.') }
        format.xml  { render :xml => @foto_de_legajo, :status => :created, :location => [:admin, @legajo, @foto_de_legajo] }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @foto_de_legajo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /foto_de_legajos/1
  # PUT /foto_de_legajos/1.xml
  def update
    @foto_de_legajo = FotoDeLegajo.find(params[:id])

    respond_to do |format|
      if @foto_de_legajo.update_attributes(params[:foto_de_legajo])
        format.html { redirect_to(admin_legajo_foto_de_legajos_path, :notice => 'FotoDeLegajo was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @foto_de_legajo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /foto_de_legajos/1
  # DELETE /foto_de_legajos/1.xml
  def destroy
    @foto_de_legajo = FotoDeLegajo.find(params[:id])
    @foto_de_legajo.destroy

    respond_to do |format|
      format.html { redirect_to(admin_legajo_foto_de_legajos_path) }
      format.xml  { head :ok }
    end
  end
  
  def get_legajo
    @legajo = Legajo.find(params[:legajo_id])
  end

  administrate_me do |admin|
    admin.belongs_to :legajo, :context => :nombre
    admin.order 'created_at DESC'
  end

end
