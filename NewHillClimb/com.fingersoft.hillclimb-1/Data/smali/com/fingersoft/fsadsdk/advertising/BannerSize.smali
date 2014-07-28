.class public Lcom/fingersoft/fsadsdk/advertising/BannerSize;
.super Ljava/lang/Object;
.source "BannerSize.java"


# instance fields
.field private height:I

.field private inMobiAdSize:I

.field private width:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .parameter "width"
    .parameter "height"
    .parameter "inMobiAdSize"

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/fingersoft/fsadsdk/advertising/BannerSize;->width:I

    .line 12
    iput p2, p0, Lcom/fingersoft/fsadsdk/advertising/BannerSize;->height:I

    .line 13
    iput p3, p0, Lcom/fingersoft/fsadsdk/advertising/BannerSize;->inMobiAdSize:I

    .line 14
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/fingersoft/fsadsdk/advertising/BannerSize;->height:I

    return v0
.end method

.method public getInMobiAdSize()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/fingersoft/fsadsdk/advertising/BannerSize;->inMobiAdSize:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/fingersoft/fsadsdk/advertising/BannerSize;->width:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Height: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/fingersoft/fsadsdk/advertising/BannerSize;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fingersoft/fsadsdk/advertising/BannerSize;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
