version draft-2

foo {}{}{}{}{{{{{ this could not be possibly valid

task hello {
  String name

  command {
    echo 'hello ${name}!'
  }
  output {
    File response = stdout()
  }
  
  runtime {
    docker: "ubuntu:latest"
    memory: "4G"
  }
  
  meta {
    author: "Funk it Souza Falooza"
    email: "not-all-that-broken@gmail.com"
    description: "This is Sparta, kinda"
  }
}

workflow test {
  call hello
}
