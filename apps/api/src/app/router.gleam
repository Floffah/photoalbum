import wisp.{type Request, type Response}
import gleam/string_builder
import gleam/http.{Get, Post}
import app/web

pub fn handle_request(req: Request) -> Response {
  use _req <- web.middleware(req)

  case wisp.path_segments(req) {
    [] -> root_endpoint(req)

    _ -> wisp.not_found()
  }
}

fn root_endpoint(req: Request) -> Response {
  use <- wisp.require_method(req, Get)

  let body = string_builder.from_string("{ \"ok\": true }")

  wisp.ok()
  |> wisp.json_body(body)
}
