function fn() {
     var env = karate.env;
     karate.log('karate.env system property was:', env);
     if (!env) {
       env = 'dev';
       var config = {
             baseUrl: 'https://api.demoblaze.com/',
       };
     }
    return config;
}