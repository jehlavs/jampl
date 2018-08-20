class ContactFormPresenter < ApplicationPresenter

  def initialize(attributes={})
    @errors = ActiveModel::Errors.new(self)
    @name, @mail, @phone, @detail = attributes['name'], attributes['mail'], attributes['phone'], attributes['detail']
  end

  attr_accessor :name, :mail, :phone, :detail
  attr_reader   :errors

  def validate!
    errors.add(:name, :blank, message: "cannot be nil") if name.nil?
    errors.add(:mail, :blank, message: "cannot be nil") if mail.nil?
  end

  def to_h
    {name: name, mail: mail, phone: phone, detail: detail}
  end

  # The following methods are needed to be minimally implemented

  def read_attribute_for_validation(attr)
    send(attr)
  end

  def self.human_attribute_name(attr, options = {})
    attr
  end

  def self.lookup_ancestors
    [self]
  end

end
