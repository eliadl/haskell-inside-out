import FakeIt4
import Prelude ()

inner :: Action ()
inner = doBoth echoName echoAge

doBoth :: Action () -> Action () -> Action ()
doBoth action1 action2 io1 =
  let (io2, ()) = action1 io1
      (io3, ()) = action2 io2
   in (io3, ())

main = run inner
