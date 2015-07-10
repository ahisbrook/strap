class MessageGenerator
  EMPTY_INPUT_RESPONSE = "You suck. Type something."

  def generate(input)
    return '' unless input

    # remove trailing/leading whitespace
    input.strip!

    # if there is no input return response
    return EMPTY_INPUT_RESPONSE if input.empty?

    "'#{input}'? Hahaha what?"
  end

end