#import "MixiPhoto.h"

@implementation MixiPhoto

+(MixiPhoto *)makeContentFromDict:(NSDictionary*)dict{
    MixiPhoto * photo = [[MixiPhoto alloc] init];
    
    photo.albumId       = [dict objectForKey:@"albumId"];
    photo.created       = [dict objectForKey:@"created"];
    photo.photoId       = [dict objectForKey:@"id"];
    photo.largeImageUrl = [dict objectForKey:@"largeImageUrl"];
    photo.mimeType      = [dict objectForKey:@"mimeType"];
    if ([[dict objectForKey:@"numComments"] isEqual:[NSNull null]]) {
        photo.numComments = [[dict objectForKey:@"numComments"] intValue];
    }
    if (![[dict objectForKey:@"numFavorites"] isEqual:[NSNull null]]) {
        photo.numFavorites = [[dict objectForKey:@"numFavorites"] intValue];
    }
    photo.thumbnailUrl = [dict objectForKey:@"thumbnailUrl"];
    photo.title        = [dict objectForKey:@"title"];
    photo.type         = [dict objectForKey:@"type"];
    photo.url          = [dict objectForKey:@"url"];
    photo.viewPageUrl  = [dict objectForKey:@"viewPageUrl"];
    
    NSDictionary * owner = [dict objectForKey:@"owner"];
    if (![owner isEqual:[NSNull null]]) {
        photo.ownerDisplayName	= [owner objectForKey:@"displayName"];
        photo.ownerId           = [owner objectForKey:@"id"];
        photo.ownerProfileUrl   = [owner objectForKey:@"profileUrl"];
        photo.ownerThumbnailUrl = [owner objectForKey:@"thumbnailUrl"];
    }
    return photo;
}

@end
