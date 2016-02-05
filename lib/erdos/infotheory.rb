module Erdos
  # Common calculations in Information Theory.
  module InfoTheory
    # Computes shannon entropy or the measure of unpredictability
    # of information content.
    #
    # @param s [String] a given input string
    # @param ignore_case [Boolean] if true, normalize to lowercase
    # @param ignore_spaces [Boolean] if true, remove all spaces
    #
    # @return [Float] The bits of entropy contained within the input string.
    def self.calculate_shannon_entropy(s, ignore_case = false,
                                       ignore_spaces = false)
      s.downcase! if ignore_case
      s.gsub!(/\s+/, '') if ignore_spaces

      s.each_char.group_by(&:to_s).values.map { |x|
        x.length / s.length.to_f
      }.reduce(0) { |e,x|
        e - x * Math.log2(x)
      }
    end # def calculate_shannon_entropy
  end # module InfoTheory
end # module Erdos
