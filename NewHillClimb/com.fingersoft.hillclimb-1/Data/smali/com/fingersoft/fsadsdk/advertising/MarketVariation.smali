.class public Lcom/fingersoft/fsadsdk/advertising/MarketVariation;
.super Ljava/lang/Object;
.source "MarketVariation.java"


# static fields
.field public static final MV_AMAZON_APPSTORE:I = 0x1

.field public static final MV_AMAZON_STREAMING_BOX:I = 0x8

.field public static final MV_GOOGLE_PLAY:I = 0x0

.field public static final MV_MYGAMEZ:I = 0x5

.field public static final MV_NOKIA_STORE:I = 0x6

.field public static final MV_SAMSUNG_APPSTORE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static derivePlatformName(I)Ljava/lang/String;
    .locals 1
    .parameter "variation"

    .prologue
    .line 14
    const-string v0, "android"

    .line 15
    .local v0, platformName:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 33
    :goto_0
    :pswitch_0
    return-object v0

    .line 18
    :pswitch_1
    const-string v0, "amazon"

    .line 19
    goto :goto_0

    .line 21
    :pswitch_2
    const-string v0, "amazonsb"

    .line 22
    goto :goto_0

    .line 24
    :pswitch_3
    const-string v0, "samsung"

    .line 25
    goto :goto_0

    .line 27
    :pswitch_4
    const-string v0, "mygamez"

    .line 28
    goto :goto_0

    .line 30
    :pswitch_5
    const-string v0, "nokia"

    goto :goto_0

    .line 15
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getDefaultAdPriority(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "locale"
    .parameter "variation"

    .prologue
    .line 38
    const-string v0, ""

    .line 39
    .local v0, priority:Ljava/lang/String;
    const-string v1, "GB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    const-string v1, "FR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    const-string v1, "DE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    const-string v1, "IT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    const-string v1, "AT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    const-string v1, "CH"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    const-string v1, "ES"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 47
    :cond_0
    const-string v0, "in_mobi,admob,millennial,mobfox,mopub,fingersoft"

    .line 54
    :goto_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/16 v1, 0x8

    if-ne p1, v1, :cond_4

    .line 56
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "amazon,"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    :cond_2
    :goto_1
    return-object v0

    .line 51
    :cond_3
    const-string v0, "in_mobi,mobfox,admob,millennial,mopub,fingersoft"

    goto :goto_0

    .line 58
    :cond_4
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "samsung,"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
