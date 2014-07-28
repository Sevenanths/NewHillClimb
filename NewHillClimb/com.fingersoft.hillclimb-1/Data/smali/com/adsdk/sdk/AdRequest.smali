.class public Lcom/adsdk/sdk/AdRequest;
.super Ljava/lang/Object;
.source "AdRequest.java"


# static fields
.field public static final BANNER:I = 0x0

.field private static final REQUEST_TYPE_ANDROID:Ljava/lang/String; = "android_app"

.field public static final VAD:I = 0x1


# instance fields
.field private connectionType:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private deviceId2:Ljava/lang/String;

.field private headers:Ljava/lang/String;

.field private ipAddress:Ljava/lang/String;

.field private latitude:D

.field private listAds:Ljava/lang/String;

.field private longitude:D

.field private protocolVersion:Ljava/lang/String;

.field private publisherId:Ljava/lang/String;

.field private requestURL:Ljava/lang/String;

.field private timestamp:J

.field private type:I

.field private userAgent:Ljava/lang/String;

.field private userAgent2:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide v0, p0, Lcom/adsdk/sdk/AdRequest;->longitude:D

    .line 18
    iput-wide v0, p0, Lcom/adsdk/sdk/AdRequest;->latitude:D

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/adsdk/sdk/AdRequest;->type:I

    .line 6
    return-void
.end method


# virtual methods
.method public getAndroidVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->connectionType:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->deviceId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 43
    const-string v0, ""

    .line 44
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->deviceId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDeviceId2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->deviceId2:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->headers:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 57
    const-string v0, ""

    .line 58
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->headers:Ljava/lang/String;

    goto :goto_0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->ipAddress:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 63
    const-string v0, ""

    .line 64
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->ipAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/adsdk/sdk/AdRequest;->latitude:D

    return-wide v0
.end method

.method public getListAds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->listAds:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->listAds:Ljava/lang/String;

    .line 75
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/adsdk/sdk/AdRequest;->longitude:D

    return-wide v0
.end method

.method public getProtocolVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->protocolVersion:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 84
    const-string v0, "4.1.6"

    .line 86
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->protocolVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPublisherId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->publisherId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 91
    const-string v0, ""

    .line 92
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->publisherId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRequestType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-string v0, "android_app"

    return-object v0
.end method

.method public getRequestURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->requestURL:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/adsdk/sdk/AdRequest;->timestamp:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/adsdk/sdk/AdRequest;->type:I

    return v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->userAgent:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 105
    const-string v0, ""

    .line 106
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->userAgent:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUserAgent2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->userAgent2:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 111
    const-string v0, ""

    .line 112
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->userAgent2:Ljava/lang/String;

    goto :goto_0
.end method

.method public setConnectionType(Ljava/lang/String;)V
    .locals 0
    .parameter "connectionType"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->connectionType:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0
    .parameter "deviceId"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->deviceId:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setDeviceId2(Ljava/lang/String;)V
    .locals 0
    .parameter "deviceId2"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->deviceId2:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setHeaders(Ljava/lang/String;)V
    .locals 0
    .parameter "headers"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->headers:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setIpAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "ipAddress"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->ipAddress:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setLatitude(D)V
    .locals 0
    .parameter "latitude"

    .prologue
    .line 136
    iput-wide p1, p0, Lcom/adsdk/sdk/AdRequest;->latitude:D

    .line 137
    return-void
.end method

.method public setListAds(Ljava/lang/String;)V
    .locals 0
    .parameter "listAds"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->listAds:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setLongitude(D)V
    .locals 0
    .parameter "longitude"

    .prologue
    .line 144
    iput-wide p1, p0, Lcom/adsdk/sdk/AdRequest;->longitude:D

    .line 145
    return-void
.end method

.method public setProtocolVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "protocolVersion"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->protocolVersion:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setPublisherId(Ljava/lang/String;)V
    .locals 0
    .parameter "publisherId"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->publisherId:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setRequestURL(Ljava/lang/String;)V
    .locals 0
    .parameter "requestURL"

    .prologue
    .line 244
    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->requestURL:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public setTimestamp(J)V
    .locals 0
    .parameter "timestamp"

    .prologue
    .line 156
    iput-wide p1, p0, Lcom/adsdk/sdk/AdRequest;->timestamp:J

    .line 157
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 252
    iput p1, p0, Lcom/adsdk/sdk/AdRequest;->type:I

    .line 253
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0
    .parameter "userAgent"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->userAgent:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setUserAgent2(Ljava/lang/String;)V
    .locals 0
    .parameter "userAgent"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->userAgent2:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->toUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getRequestURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 212
    .local v0, b:Landroid/net/Uri$Builder;
    const-string v1, "rt"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getRequestType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 213
    const-string v1, "v"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getProtocolVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 214
    const-string v1, "i"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 215
    const-string v1, "u"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 216
    const-string v1, "u2"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getUserAgent2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 217
    const-string v1, "s"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getPublisherId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 218
    const-string v1, "o"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 219
    const-string v1, "o2"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getDeviceId2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 220
    const-string v1, "t"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 221
    const-string v1, "connection_type"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getConnectionType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 222
    const-string v1, "listads"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getListAds()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 223
    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 233
    :goto_0
    const-string v1, "u_wv"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 236
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 225
    :pswitch_0
    const-string v1, "c.mraid"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 226
    const-string v1, "sdk"

    const-string v2, "banner"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 229
    :pswitch_1
    const-string v1, "c.mraid"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 230
    const-string v1, "sdk"

    const-string v2, "vad"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
