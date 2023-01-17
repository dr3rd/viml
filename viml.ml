let main () =
  let viml file = Velo.Editor.init file |> Velo.Term.lwt Velo.Image.editor in

  (* https://github.com/hammerlab/ppx_deriving_cmdliner/issues/51 *)
  let file_t = Cmdliner.Arg.(value & pos 0 (some string) None & info [] ~docv:"file") in
  let viml_t = Cmdliner.Term.(const viml $ file_t) in

  exit @@ Cmdliner.Cmd.eval @@ Cmdliner.Cmd.v (Cmdliner.Cmd.info "viml") viml_t

let () = main ()
