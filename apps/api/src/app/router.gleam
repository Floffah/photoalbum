import wisp.{type Request, type Response}
import gleam/string_builder
import gleam/http.{Get, Post}
import app/web
import gleam/json.{bool, object, to_string_builder}

pub fn handle_request(req: Request) -> Response {
  use _req <- web.middleware(req)

  case wisp.path_segments(req) {
    [] -> root_endpoint(req)

    _ -> wisp.not_found()
  }
}

fn root_endpoint(req: Request) -> Response {
  use <- wisp.require_method(req, Get)

  let body = to_string_builder(object([#("ok", bool(True))]))

  wisp.ok()
  |> wisp.json_body(body)
}
