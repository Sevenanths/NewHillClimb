.class public Lcom/fingersoft/fsadsdk/advertising/utils/ApiResolver;
.super Ljava/lang/Object;
.source "ApiResolver.java"


# static fields
.field public static final ADVERT_IMAGE_URL:Ljava/lang/String; = "api/get_advert_image?"

.field public static final AD_INCREMENT_URL:Ljava/lang/String; = "api/indrement_ad_requests?"

.field public static final GET_CAMPAIGN_URL:Ljava/lang/String; = "api/campaigns?"

.field public static final PROMOTION_IMAGE_URL:Ljava/lang/String; = "api/get_promotion_image?"

.field public static final PROMO_INCREMENT_URL:Ljava/lang/String; = "api/increment_promotion_clicks?"

.field public static final STARTUP_REQUEST_URL:Ljava/lang/String; = "api/startup_request?"


# instance fields
.field private advertisementStorageUrl:Ljava/lang/String;

.field private baseAddress:Ljava/lang/String;

.field private platform:Ljava/lang/String;

.field private promotionStorageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "marketVariation"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "http://54.242.151.181:3000/app_dev.php/"

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/utils/ApiResolver;->baseAddress:Ljava/lang/String;

    .line 17
    const-string v0, "http://54.242.151.181/promotions/"

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/utils/ApiResolver;->promotionStorageUrl:Ljava/lang/String;

    .line 18
    const-string v0, "http://54.242.151.181/advertisements/"

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/utils/ApiResolver;->advertisementStorageUrl:Ljava/lang/String;

    .line 22
    invoke-static {p1}, Lcom/fingersoft/fsadsdk/advertising/MarketVariation;->derivePlatformName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/utils/ApiResolver;->platform:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public getAdvertisementStorageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/utils/ApiResolver;->advertisementStorageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/utils/ApiResolver;->baseAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/utils/ApiResolver;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotionStorageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/utils/ApiResolver;->promotionStorageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public resolveUrl(Ljava/lang/String;Lcom/fingersoft/fsadsdk/advertising/utils/UrlBuilder;)Ljava/lang/String;
    .locals 2
    .parameter "featureUrl"
    .parameter "builder"

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/utils/ApiResolver;->baseAddress:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/fingersoft/fsadsdk/advertising/utils/UrlBuilder;->buildUrl(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAdvertisementStorageUrl(Ljava/lang/String;)Lcom/fingersoft/fsadsdk/advertising/utils/ApiResolver;
    .locals 0
    .parameter "url"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/utils/ApiResolver;->advertisementStorageUrl:Ljava/lang/String;

    .line 40
    return-object p0
.end method

.method public setBaseAddress(Ljava/lang/String;)Lcom/fingersoft/fsadsdk/advertising/utils/ApiResolver;
    .locals 0
    .parameter "baseAddress"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/utils/ApiResolver;->baseAddress:Ljava/lang/String;

    .line 28
    return-object p0
.end method

.method public setMarketVariation(I)V
    .locals 1
    .parameter "marketVariation"

    .prologue
    .line 50
    invoke-static {p1}, Lcom/fingersoft/fsadsdk/advertising/MarketVariation;->derivePlatformName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/utils/ApiResolver;->platform:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setPromotionStorageUrl(Ljava/lang/String;)Lcom/fingersoft/fsadsdk/advertising/utils/ApiResolver;
    .locals 0
    .parameter "url"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/utils/ApiResolver;->promotionStorageUrl:Ljava/lang/String;

    .line 34
    return-object p0
.end method
