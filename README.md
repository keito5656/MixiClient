MixiClient
==========

mixiSDKをデリゲートから開放します．


    MixiRequest *request = [MixiRequest requestWithEndpoint:@"/photo/albums/@me/@self"];
    MixiClient *client = [[[MixiClient alloc] init];
    [client sendRequest:request
                     complate:^(id data) {
                         hogehoge...
                     } error:^(Mixi *mixi, NSError *error) {
                         hogehoge...
                     }];
                     
    [client cancel:^(Mixi *mixi, NSURLConnection *connection) {
       hogehoge..
    }];
