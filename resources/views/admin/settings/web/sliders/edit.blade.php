@extends('admin.layout')
@section('content')
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1> {{ trans('labels.EditSliderImage') }} <small>{{ trans('labels.EditSliderImage') }}...</small> </h1>
    <ol class="breadcrumb">
       <li><a href="{{ URL::to('admin/dashboard/this_month') }}"><i class="fa fa-dashboard"></i> {{ trans('labels.breadcrumb_dashboard') }}</a></li>
      <li><a href="{{ URL::to('admin/sliders')}}"><i class="fa fa-bars"></i> {{ trans('labels.Sliders') }}</a></li>
      <li class="active">{{ trans('labels.EditSliderImage') }}</li>
    </ol>
  </section>

  <!-- Main content -->
  <section class="content">
    <!-- Info boxes -->

    <!-- /.row -->

    <div class="row">
      <div class="col-md-12">
        <div class="box">
          <div class="box-header">
            <h3 class="box-title">{{ trans('labels.EditSliderImage') }} </h3>
          </div>

          <!-- /.box-header -->
          <div class="box-body">
            <div class="row">
              <div class="col-xs-12">
              		<div class="box box-info">
                    <br>
                        @if (count($errors) > 0)
                              @if($errors->any())
                                <div class="alert alert-success alert-dismissible" role="alert">
                                  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                  {{$errors->first()}}
                                </div>
                              @endif
                          @endif
                        <!--<div class="box-header with-border">
                          <h3 class="box-title">Edit category</h3>
                        </div>-->
                        <!-- /.box-header -->
                        <!-- form start -->
                         <div class="box-body">

                            {!! Form::open(array('url' =>'admin/updateSlide', 'method'=>'post', 'class' => 'form-horizontal', 'enctype'=>'multipart/form-data')) !!}

                                {!! Form::hidden('id',  $result['sliders'][0]->sliders_id , array('class'=>'form-control', 'id'=>'id')) !!}
                                {!! Form::hidden('oldImage',  $result['sliders'][0]->sliders_image, array('id'=>'oldImage')) !!}

                                <div class="form-group hidden">
                                  <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.Language') }}</label>
                                  <div class="col-sm-10 col-md-4">
                                      <select class="form-control" name="languages_id">
                                          @foreach($result['languages'] as $language)
                                              <option value="{{$language->languages_id}}" @if($language->languages_id==$result['sliders'][0]->languages_id) selected @endif>{{ $language->name }}</option>
                                          @endforeach
                                      </select>
                                      <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                      {{ trans('labels.ChooseLanguageText') }}</span>
                                  </div>
                                </div>

                                <div class="form-group">
                                  <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.Title') }} </label>
                                  <div class="col-sm-10 col-md-4">
                                    {!! Form::text('sliders_title', $result['sliders'][0]->sliders_title, array('class'=>'form-control','id'=>'sliders_title')) !!}
                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.SliderTitletext') }}</span>
                                  </div>
                                </div>

                                <div class="form-group">
                                  <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.Categories') }}</label>
                                  <div class="col-sm-10 col-md-4">
                                      <select class="form-control" name="type" id="bannerType">
                                          <option value="category" @if($result['sliders'][0]->type=='category') selected @endif>
                                          {{ trans('labels.ChooseSubCategory') }}</option>
                                          <option value="product" @if($result['sliders'][0]->type=='product') selected @endif>{{ trans('labels.Product') }}</option>
                                          <option value="topseller" @if($result['sliders'][0]->type=='topseller') selected @endif>{{ trans('labels.TopSeller') }}</option>
                                          <option value="special" @if($result['sliders'][0]->type=='special') selected @endif>{{ trans('labels.Deals') }}</option>
                                          <option value="mostliked" @if($result['sliders'][0]->type=='mostliked') selected @endif>{{ trans('labels.MostLiked') }}</option>
                                      </select>
                                       <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                      {{ trans('labels.ChooseSliderToAsscociateWith') }}</span>
                                  </div>
                                </div>


                                <div class="form-group categoryContent" @if($result['sliders'][0]->type!='category') style="display: none" @endif >
                                  <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.Categories') }}</label>
                                  <div class="col-sm-10 col-md-4">
                                      <select class="form-control" name="categories_id" id="categories_id">
                                      @foreach($result['categories'] as $category)
                                		<option value="{{ $category->slug}}">{{ $category->name}}</option>
                                      @endforeach
                                      </select>
                                      <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                      {{ trans('labels.CategoriessliderText') }}</span>
                                  </div>
                                </div>

                                <div class="form-group productContent" @if($result['sliders'][0]->type!='product') style="display: none" @endif>
                                  <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.Products') }}</label>
                                  <div class="col-sm-10 col-md-4">
                                      <select class="form-control" name="products_id" id="products_id">
                                      @foreach($result['products'] as $products_data)
                                		<option value="{{ $products_data->products_slug }}">{{ $products_data->products_name }}</option>
                                      @endforeach
                                      </select>
                                     <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                      {{ trans('labels.ProductsSliderText') }}</span>
                                  </div>
                                </div>

                                <div class="form-group">
                                    <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.Image') }}</label>
                                    <div class="col-sm-10 col-md-4">
                                        {{--{!! Form::file('newImage', array('id'=>'newImage')) !!}--}}
                                        <!-- Modal -->
                                            <div class="modal fade embed-images" id="Modalmanufactured" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                                <div class="modal-dialog" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal" id ="closemodal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                                            <h3 class="modal-title text-primary" id="myModalLabel">{{ trans('labels.Choose Image') }} </h3>
                                                        </div>
                                                        <div class="modal-body manufacturer-image-embed">
                                                            @if(isset($allimage))
                                                                <select class="image-picker show-html " name="image_id" id="select_img">
                                                                    <option  value=""></option>
                                                                    @foreach($allimage as $key=>$image)
                                                                        <option data-img-src="{{asset($image->path)}}"  class="imagedetail" data-img-alt="{{$key}}" value="{{$image->id}}"> {{$image->id}} </option>
                                                                    @endforeach
                                                                </select>
                                                            @endif
                                                        </div>
                                                        <div class="modal-footer">
                                                          <a href="{{url('admin/media/add')}}" target="_blank" class="btn btn-primary pull-left" >{{ trans('labels.Add Icon') }}</a>
                                                          <button type="button" class="btn btn-default refresh-image"><i class="fa fa-refresh"></i></button>
                                                          <button type="button" class="btn btn-success" id="selectedICONE" data-dismiss="modal">{{ trans('labels.Done') }}</button>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>

                                            <div  id ="imageselected">
                                                {!! Form::button(trans('labels.Add Icon'), array('id'=>'newImage','class'=>"btn btn-primary", 'data-toggle'=>"modal", 'data-target'=>"#Modalmanufactured" )) !!}
                                                <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 3px;">{{ trans('labels.LanguageFlag') }}</span>
                                                <div class="closimage">
                                                    <button type="button" class="close pull-right" id="image-close" style="display: none; position: absolute;left: 91px; top: 54px; background-color: black; color: white; opacity: 2.2;" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div  id="selectedthumbnail"></div>
                                                <br>
                                                {!! Form::hidden('oldImage', $result['languages'][0]->image, array('id'=>'oldImage')) !!}
                                                @if(($result['languages'][0]->path!== null))
                                                    <img width="80px" src="{{asset($result['sliders'][0]->path)}}" class="img-circle">
                                                @else
                                                    <img width="80px" src="{{asset($result['sliders'][0]->path) }}" class="img-circle">
                                                @endif

                                            </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                  <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.ExpiryDate') }}</label>
                                  <div class="col-sm-10 col-md-4">



                                   @if(!empty($result['sliders'][0]->expires_date))
                                    {!! Form::text('expires_date', date('d/m/Y', strtotime($result['sliders'][0]->expires_date)), array('class'=>'form-control datepicker', 'id'=>'expires_date')) !!}
                                   @else
                                    {!! Form::text('expires_date', '', array('class'=>'form-control datepicker', 'id'=>'expires_date')) !!}

                                   @endif
                                   <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                    {{ trans('labels.ExpiryDateSlider') }}</span>
                                  </div>
                                </div>

                                <div class="form-group hidden">
                                  <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.Status') }}</label>
                                  <div class="col-sm-10 col-md-4">
                                      <select class="form-control" name="status">
                                          <option value="1" @if($result['sliders'][0]->status==1) selected @endif>{{ trans('labels.Active') }}</option>
                                          <option value="0" @if($result['sliders'][0]->status==0) selected @endif>{{ trans('labels.Inactive') }}</option>
                                      </select>
                                     <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                      {{ trans('labels.StatusSliderText') }}</span>
                                  </div>
                                </div>


                              <!-- /.box-body -->
                              <div class="box-footer text-center">
                                <button type="submit" class="btn btn-primary">{{ trans('labels.Submit') }}</button>
                                <a href="{{ URL::to('admin/sliders')}}" type="button" class="btn btn-default">{{ trans('labels.back') }}</a>
                              </div>
                              <!-- /.box-footer -->
                            {!! Form::close() !!}
                        </div>
                  </div>
              </div>
            </div>

          </div>
          <!-- /.box-body -->
        </div>
        <!-- /.box -->
      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->

    <!-- Main row -->

    <!-- /.row -->
  </section>
  <!-- /.content -->
</div>
@endsection
