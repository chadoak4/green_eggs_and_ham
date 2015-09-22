class GreenEggsAndHam

  def initialize
    @text = File.read('green_eggs_and_ham.txt')

  end

  def story_words
    @text.split.map { |word| word.downcase.gsub(/[^a-z-]/, "" ) }
    p @text.split.map { |word| word.downcase.gsub(/[^a-z-]/, "" ) }
  end

  def word_count
    story_words.length
    p story_words.length
  end

  def sorted_unique_words
    story_words.uniq.sort
    p story_words.uniq.sort
  end

  def number_of_words_shorter_than(x)
    lessthanfour = @text.downcase.gsub(/[^a-z-]/, " ")
    result = lessthanfour.split.map.select {|n| n.length < 4}.length
    p result
  end

  def longest_word
    story_words.max_by { |word| word.length}
    # story_words.max_by(&:length) <- from class
    p story_words.max_by { |word| word.length}
  end

  def frequency_of_unique_words
    uniq_freq = @text.split.map { |word| word.downcase.gsub(/[^a-z-]/, "" ) }
    word_freq = uniq_freq.each_with_object(Hash.new(0)) {|freq, word| word[freq] +=1}
    p word_freq
  end

  def stanzas
    num_stanzas = @text.split(/\n\n/)
    p num_stanzas
  end

  def lines
    num_lines = @text.split(/\n/)
    lines_wo_space = num_lines.delete_if { |x| x == ""}
    p lines_wo_space
  end
  def punctuation_count
    count_punct = @text.scan(/[!,.?]/).length
    p count_punct


  end
 end
