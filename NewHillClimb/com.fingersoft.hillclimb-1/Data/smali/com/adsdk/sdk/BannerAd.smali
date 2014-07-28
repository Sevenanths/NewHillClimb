.class public Lcom/adsdk/sdk/BannerAd;
.super Ljava/lang/Object;
.source "BannerAd.java"

# interfaces
.implements Lcom/adsdk/sdk/Ad;


# static fields
.field public static final OTHER:Ljava/lang/String; = "other"

.field public static final WEB:Ljava/lang/String; = "web"

.field private static final serialVersionUID:J = 0x2d684300784e9155L


# instance fields
.field private bannerHeight:I

.field private bannerWidth:I

.field private clickType:Lcom/adsdk/sdk/data/ClickType;

.field private clickUrl:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private refresh:I

.field private scale:Z

.field private skipOverlay:I

.field private skipPreflight:Z

.field private text:Ljava/lang/String;

.field private type:I

.field private urlType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/adsdk/sdk/BannerAd;->skipOverlay:I

    .line 5
    return-void
.end method


# virtual methods
.method public getBannerHeight()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/adsdk/sdk/BannerAd;->bannerHeight:I

    return v0
.end method

.method public getBannerWidth()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/adsdk/sdk/BannerAd;->bannerWidth:I

    return v0
.end method

.method public getClickType()Lcom/adsdk/sdk/data/ClickType;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/adsdk/sdk/BannerAd;->clickType:Lcom/adsdk/sdk/data/ClickType;

    return-object v0
.end method

.method public getClickUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adsdk/sdk/BannerAd;->clickUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/adsdk/sdk/BannerAd;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRefresh()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/adsdk/sdk/BannerAd;->refresh:I

    return v0
.end method

.method public getSkipOverlay()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/adsdk/sdk/BannerAd;->skipOverlay:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/adsdk/sdk/BannerAd;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/adsdk/sdk/BannerAd;->type:I

    return v0
.end method

.method public getUrlType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/adsdk/sdk/BannerAd;->urlType:Ljava/lang/String;

    return-object v0
.end method

.method public isScale()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/adsdk/sdk/BannerAd;->scale:Z

    return v0
.end method

.method public isSkipPreflight()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/adsdk/sdk/BannerAd;->skipPreflight:Z

    return v0
.end method

.method public setBannerHeight(I)V
    .locals 0
    .parameter "bannerHeight"

    .prologue
    .line 73
    iput p1, p0, Lcom/adsdk/sdk/BannerAd;->bannerHeight:I

    .line 74
    return-void
.end method

.method public setBannerWidth(I)V
    .locals 0
    .parameter "bannerWidth"

    .prologue
    .line 77
    iput p1, p0, Lcom/adsdk/sdk/BannerAd;->bannerWidth:I

    .line 78
    return-void
.end method

.method public setClickType(Lcom/adsdk/sdk/data/ClickType;)V
    .locals 0
    .parameter "clickType"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/adsdk/sdk/BannerAd;->clickType:Lcom/adsdk/sdk/data/ClickType;

    .line 82
    return-void
.end method

.method public setClickUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "clickUrl"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/adsdk/sdk/BannerAd;->clickUrl:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "imageUrl"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/adsdk/sdk/BannerAd;->imageUrl:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setRefresh(I)V
    .locals 0
    .parameter "refresh"

    .prologue
    .line 93
    iput p1, p0, Lcom/adsdk/sdk/BannerAd;->refresh:I

    .line 94
    return-void
.end method

.method public setScale(Z)V
    .locals 0
    .parameter "scale"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/adsdk/sdk/BannerAd;->scale:Z

    .line 98
    return-void
.end method

.method public setSkipOverlay(I)V
    .locals 0
    .parameter "skipOverlay"

    .prologue
    .line 133
    iput p1, p0, Lcom/adsdk/sdk/BannerAd;->skipOverlay:I

    .line 134
    return-void
.end method

.method public setSkipPreflight(Z)V
    .locals 0
    .parameter "skipPreflight"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/adsdk/sdk/BannerAd;->skipPreflight:Z

    .line 102
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/adsdk/sdk/BannerAd;->text:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "adType"

    .prologue
    .line 110
    iput p1, p0, Lcom/adsdk/sdk/BannerAd;->type:I

    .line 111
    return-void
.end method

.method public setUrlType(Ljava/lang/String;)V
    .locals 0
    .parameter "urlType"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/adsdk/sdk/BannerAd;->urlType:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response [refresh="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/adsdk/sdk/BannerAd;->refresh:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adsdk/sdk/BannerAd;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 120
    const-string v1, ", bannerWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adsdk/sdk/BannerAd;->bannerWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bannerHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 121
    iget v1, p0, Lcom/adsdk/sdk/BannerAd;->bannerHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/BannerAd;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/adsdk/sdk/BannerAd;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clickType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/BannerAd;->clickType:Lcom/adsdk/sdk/data/ClickType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 123
    const-string v1, ", clickUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/BannerAd;->clickUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", urlType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/BannerAd;->urlType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 124
    const-string v1, ", scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/adsdk/sdk/BannerAd;->scale:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", skipPreflight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 125
    iget-boolean v1, p0, Lcom/adsdk/sdk/BannerAd;->skipPreflight:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
