module HyperI18n
  class Translate < Hyperloop::ServerOp
    param :acting_user
    param :attribute
    param :opts
    param :translation, default: nil

    def opts
      opts.with_indifferent_access
    end

    step do
      params.translation = ::I18n.t(params.attribute, opts)
    end
  end
end
