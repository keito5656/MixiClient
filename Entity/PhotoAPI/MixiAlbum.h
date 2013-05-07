#import <Foundation/Foundation.h>
#import "MixiEntity.h"

@interface MixiAlbum : MixiEntity
@property (nonatomic,strong) NSString * created;
@property (nonatomic,strong) NSString * description;
@property (nonatomic,strong) NSString * albumId; 
@property (nonatomic) int mediaItemCount; 
@property (nonatomic) int numComments;
@property (nonatomic,strong) NSString * ownerDisplayName;
@property (nonatomic,strong) NSString * ownerId;
@property (nonatomic,strong) NSString * ownerProfileUrl;
@property (nonatomic,strong) NSString * ownerThumbnailUrl;
@property (nonatomic,strong) NSString * privacyVisibility;
@property (nonatomic,strong) NSString * thumbnailUrl;
@property (nonatomic,strong) NSString * title;
@property (nonatomic,strong) NSString * url;
@property (nonatomic,strong) NSString * viewPageUrl;
@end


