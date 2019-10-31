defmodule MouseForNerves.InputCheck do
  import Logger

  def check() do
    Logger.info("Input event, enumerating devices:")

    InputEvent.enumerate()
    |> Enum.map(fn {device, info} ->
      %{name: name, report_info: report_info} = info
      Logger.info("Device #{device}: #{name} - Reporting values:")

      Enum.map(report_info, fn {key, _value} ->
        Logger.info("#{key}")
      end)
    end)
  end
end
