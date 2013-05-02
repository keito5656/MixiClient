#import "MixiAlbum.h"
#import "JSONKit.h"

@implementation MixiAlbum

+ (MixiAlbum *)makeContentFromDict:(NSDictionary*)dict{
    MixiAlbum * album = [[MixiAlbum alloc] init];
    
    album.created        = [dict objectForKey:@"created"];
    album.description    = [dict objectForKey:@"description"];
    album.albumId        = [dict objectForKey:@"id"];
    if (![[dict objectForKey:@"mediaItemCount"] isEqual:[NSNull null]]) {
        album.mediaItemCount = [[dict objectForKey:@"mediaItemCount"] intValue]; 
    }
    if (![[dict objectForKey:@"numComments"] isEqual:[NSNull null]]) {
        album.numComments    = [[dict objectForKey:@"numComments"] intValue];
    }
    NSDictionary * owner = [dict objectForKey:@"owner"];
    if (![owner isEqual:[NSNull null]]) {
        album.ownerDisplayName	= [owner objectForKey:@"displayName"];
        album.ownerId           = [owner objectForKey:@"id"];
        album.ownerProfileUrl   = [owner objectForKey:@"profileUrl"];
        album.ownerThumbnailUrl = [owner objectForKey:@"thumbnailUrl"];
    }
    NSDictionary * privacy = [dict objectForKey:@"privacy"];
    if (![privacy isEqual:[NSNull null]]) {
        album.privacyVisibility = [privacy objectForKey:@"visibility"];
    }
    album.thumbnailUrl     = [dict objectForKey:@"thumbnailUrl"];
    album.title = [dict objectForKey:@"title"];
    album.url = [dict objectForKey:@"url"];
    album.viewPageUrl = [dict objectForKey:@"viewPageUrl"];

    return album;
}

@end