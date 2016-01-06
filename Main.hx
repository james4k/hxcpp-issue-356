package;

import haxe.io.Bytes;
import cpp.vm.Gc;

class Main {

   public static function main():Void {
      var rand = new cpp.Random ();
      rand.setSeed(1);

      var blah = new Array<Dynamic>();	
      //untyped __cpp__ ("__asm int 3");
      for (i in 0...1000) {
         for (ii in 0...100) {
            var b = haxe.io.Bytes.alloc(1 + rand.int(1023));
            blah.push(b);
         }
         //blah.push({});
         for (iii in 0...10) {
            var b = haxe.io.Bytes.alloc(1 + rand.int(1023));
            blah.push(b);
            //trace (blah.length);
         }
         Gc.run(true);
      }
   }

}
