[title: "Elixir", subtitle: "Bryan Weber<br/>@brweber2, @cobenian"],

[title: "What is Elixir?"],

["Erlang", "Beam/EVM", "Functional", "Ruby like syntax"],

[title: "Why Elixir?"],

["Scalability", "Fault tolerance", "Tooling", "Interactive development", "OTP", "Erlang libraries"],

["Pattern Matching", "Binaries", "Error handling"],

"I love Erlang, but that syntax...",

"Seriously, what is this syntax?",

[html: """
<pre><code class="erlang">
PrepareAlarm = fun(Room) ->
    io:format("Alarm set in ~s.~n",[Room]),
    fun() -> io:format(
               "Alarm tripped in ~s! Call Batman!~n",
               [Room])
    end
end.
</code></pre>
"""],

"Not so scary, but there are implementation details from <i>Prolog</i> in there
that you probably missed.<br/><br/>Maybe of interest to this crowd?",

[title: "Pattern Matching", subtitle: "analyze this..."],

Source.code(

  def run do
    a = 15
  end

),

"What is the value of a?",

[elixir: """
  a = 15
  b = a
"""],

Source.code(

  def run do
    a = 15
    b = a
  end

),

"What is the value of b?<br/><br/>WHY?",

Source.code(

  def run do
    a = 15
    b = a
    a = 20
  end

),

"What is the value of b?<br/><br/>WHY?",

"What is the value of a?",

"Erlang and Elixir differ there...",

"So what is this?",

Source.code(

  def run do
    a = 15
    b = 20
    15 = a
  end

),

"What happens if you do this?",

Source.code(

  def run do
    a = 15
    b = 20
    20 = a
  end

),

[title: "How can this be true?"],

"OK, so why do this when we programmers are used to something different?<br/><br/>What benefit is there?",

Source.code(
    def run do
      b = "bar"
      {a, "bar", [c | t]} = {"foo", b, ["baz", "quux", "bling"]}
    end
),

"Yeah, my favorite language has destructring too, what's the big deal?",

[elixir: """
defmodule Main do
  def process("yikes", args = %{:key=>value}) do
    IO.puts "You passed a map with a 'key' key."
  end
  def process("foo", "bar", qty) do
    IO.puts "I've got \#{qty} of 'em."
  end
end
"""],

Source.code(

Main.process("yikes", %{key: "meh", donkey: "kong"})

),

Source.code(

defmodule Main do

  def run(args) do
    args |> Main.process
  end

  def process("foo", "bar", qty) do
    IO.puts "I've got #{qty} of 'em."
  end

end

),
