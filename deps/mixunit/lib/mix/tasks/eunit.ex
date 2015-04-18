defmodule Mix.Tasks.Eunit do
  use Mix.Task

  @shortdoc "Run a project's eunit tests"

  def run(args) do
    {opts, _, _} = OptionParser.parse(args,
      strict: [verbose: :boolean],
      aliases: [v: :verbose]
    )

    options = if Keyword.get(opts, :verbose, false), do: [:verbose], else: []
    :eunit.test {:application, Mix.Project.config[:app]}, options
  end
end