require "language_pack"
require "language_pack/ruby"

# Mruby Language Pack.
class LanguagePack::Mruby < LanguagePack::Ruby

  def self.use?
    true
  end

  def name
    "mruby"
  end

  def default_config_vars
    super.merge({
      "RACK_ENV" => "production"
    })
  end

  def default_process_types
    # no process, nothing in mruby can bind to
    # port yet
    super.merge({

    })
  end

end

