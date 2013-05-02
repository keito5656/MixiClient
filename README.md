MixiClient
==========

mixiSDKをデリゲートから開放します．


    MixiRequest *request = [MixiRequest requestWithEndpoint:@"/photo/albums/@me/@self"];
    [[[MixiClient alloc]init] sendRequest:request
                                 complate:^(id data) {
                                     hogehoge...
                                 } error:^(Mixi *mixi, NSError *error) {
                                     hogehoge...
                                 }];
