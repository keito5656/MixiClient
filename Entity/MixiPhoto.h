#import <Foundation/Foundation.h>
#import "MixiEntity.h"

@interface MixiPhoto : MixiEntity

@property (nonatomic,unsafe_unretained) id delegate;

@property (nonatomic,strong) NSString * albumId;
@property (nonatomic,strong) NSString * created;
@property (nonatomic,strong) NSString * photoId;
@property (nonatomic,strong) NSString * largeImageUrl;
@property (nonatomic,strong) NSString * mimeType;
@property (nonatomic) NSInteger numComments;
@property (nonatomic) NSInteger numFavorites;
@property (nonatomic,strong) NSString * thumbnailUrl;
@property (nonatomic,strong) NSString * title;
@property (nonatomic,strong) NSString * type;
@property (nonatomic,strong) NSString * url;
@property (nonatomic,strong) NSString * viewPageUrl;
@property (nonatomic,strong) NSString * ownerThumbnailUrl;
@property (nonatomic,strong) NSString * ownerId;
@property (nonatomic,strong) NSString * ownerDisplayName;
@property (nonatomic,strong) NSString * ownerProfileUrl;
@property (nonatomic,strong) UIImage * ownerThumbnailImage;
@end
