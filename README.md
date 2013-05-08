MixiClient
==========

mixiSDKをデリゲートから開放します．


    MixiRequest *request = [MixiRequest requestWithEndpoint:@"/photo/albums/@me/@self"];
    MixiClient *client = [[MixiClient alloc] init];
    [client sendRequest:request
                     complate:^(id data) {
                         hogehoge...
                     } error:^(Mixi *mixi, NSError *error) {
                         hogehoge...
                     }];
                     
    [client cancel:^(Mixi *mixi, NSURLConnection *connection) {
       hogehoge..
    }];

entity

    MixiCollection *MixiCollection = [MixiEntity entitiesArrayWithData:APIResponseData];
    MixiEntity entity = [MixiEntity entityWithData:APIResponseData];


APIアクセス


    [MixiClient lookupWithPageID:@"298660" complete:^(MixiPage *entity) {
        NSLog(@"%@",entity);
        
    } error:^(Mixi *mixi, NSError *error) {
    　　hogehoge...
    }];
    
    [MixiClient findMyFollowPageWithComplete:^(MixiCollection *collection) {
        for(MixiPage *page in collection.contents) {
            NSLog(@"%@", page.pageName);
            NSLog(@"%d", page.ageRating);
        }
    } error:^(Mixi *mixi, NSError *error) {
        hogehoge
    }];
