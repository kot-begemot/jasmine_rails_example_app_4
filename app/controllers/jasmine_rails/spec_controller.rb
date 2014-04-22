#Copied from Jasminerice to serve 
module JasmineRails
  class SpecController < ActionController::Base

    helper Jasminerice::SpecHelper rescue nil

    before_filter { prepend_view_path Rails.root.to_s }

    layout false

    def index
      @specsuite = params[:suite].try(:concat, "_spec") || "spec"
      @asset_options = %w(true false).include?(params[:debug]) ? { :debug => params[:debug] == 'true' } : {}
    end

    def fixtures
      render "#{JasmineRails.fixtures_dir}/#{params[:filename]}"
    end
  end
end if defined?(JasmineRails)