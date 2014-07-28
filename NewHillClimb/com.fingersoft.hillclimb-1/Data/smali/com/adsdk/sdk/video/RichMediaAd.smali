.class public Lcom/adsdk/sdk/video/RichMediaAd;
.super Ljava/lang/Object;
.source "RichMediaAd.java"

# interfaces
.implements Lcom/adsdk/sdk/Ad;


# static fields
.field public static final ANIMATION_FADE_IN:I = 0x1

.field public static final ANIMATION_FLIP_IN:I = 0x6

.field public static final ANIMATION_NONE:I = 0x0

.field public static final ANIMATION_SLIDE_IN_BOTTOM:I = 0x3

.field public static final ANIMATION_SLIDE_IN_LEFT:I = 0x4

.field public static final ANIMATION_SLIDE_IN_RIGHT:I = 0x5

.field public static final ANIMATION_SLIDE_IN_TOP:I = 0x2

.field private static final serialVersionUID:J = 0x596c2c2d4c5670b3L


# instance fields
.field private animation:I

.field private interstitial:Lcom/adsdk/sdk/video/InterstitialData;

.field private timestamp:J

.field private type:I

.field private video:Lcom/adsdk/sdk/video/VideoData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnimation()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaAd;->animation:I

    return v0
.end method

.method public getInterstitial()Lcom/adsdk/sdk/video/InterstitialData;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaAd;->interstitial:Lcom/adsdk/sdk/video/InterstitialData;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/adsdk/sdk/video/RichMediaAd;->timestamp:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaAd;->type:I

    return v0
.end method

.method public getVideo()Lcom/adsdk/sdk/video/VideoData;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaAd;->video:Lcom/adsdk/sdk/video/VideoData;

    return-object v0
.end method

.method public setAnimation(I)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 39
    iput p1, p0, Lcom/adsdk/sdk/video/RichMediaAd;->animation:I

    .line 40
    return-void
.end method

.method public setInterstitial(Lcom/adsdk/sdk/video/InterstitialData;)V
    .locals 0
    .parameter "interstitial"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaAd;->interstitial:Lcom/adsdk/sdk/video/InterstitialData;

    .line 56
    return-void
.end method

.method public setTimestamp(J)V
    .locals 0
    .parameter "timestamp"

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/adsdk/sdk/video/RichMediaAd;->timestamp:J

    .line 64
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "adType"

    .prologue
    .line 31
    iput p1, p0, Lcom/adsdk/sdk/video/RichMediaAd;->type:I

    .line 32
    return-void
.end method

.method public setVideo(Lcom/adsdk/sdk/video/VideoData;)V
    .locals 0
    .parameter "video"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaAd;->video:Lcom/adsdk/sdk/video/VideoData;

    .line 48
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RichMediaAD [timestamp="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/adsdk/sdk/video/RichMediaAd;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaAd;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 69
    const-string v1, ", animation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaAd;->animation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", video="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaAd;->video:Lcom/adsdk/sdk/video/VideoData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 70
    const-string v1, ", interstitial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaAd;->interstitial:Lcom/adsdk/sdk/video/InterstitialData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
