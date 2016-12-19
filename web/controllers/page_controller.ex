defmodule Wbml.PageController do
  use Wbml.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def login(conn, %{"username" => username, "password" => password}) do
    sargs = [ { :host, "" }, { :port, 143 }, { :tls, :starttls } ]
    {:ok, pid} = :gen_fsm.start_link(:eimap_imap, sargs, [])
    # { :ok, Imap } = :eimap.start_link(sargs)
    :eimap.login(Imap, self(), :undefined, username, password)
     
  end
end
