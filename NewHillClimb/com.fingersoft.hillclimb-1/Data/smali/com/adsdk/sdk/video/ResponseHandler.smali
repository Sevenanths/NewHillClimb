.class public Lcom/adsdk/sdk/video/ResponseHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ResponseHandler.java"


# instance fields
.field private contents:Ljava/io/CharArrayWriter;

.field private currentExpiration:J

.field private currentTracker:Lcom/adsdk/sdk/video/TrackerData;

.field private insideInterstitial:Z

.field private insideMarkup:Z

.field private insideVideo:Z

.field private insideVideoList:Z

.field private richMediaAd:Lcom/adsdk/sdk/video/RichMediaAd;

.field videoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/adsdk/sdk/video/ResponseHandler;->richMediaAd:Lcom/adsdk/sdk/video/RichMediaAd;

    .line 21
    iput-object v0, p0, Lcom/adsdk/sdk/video/ResponseHandler;->videoList:Ljava/util/HashMap;

    .line 25
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/video/ResponseHandler;->contents:Ljava/io/CharArrayWriter;

    .line 26
    new-instance v0, Lcom/adsdk/sdk/video/TrackerData;

    invoke-direct {v0}, Lcom/adsdk/sdk/video/TrackerData;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentTracker:Lcom/adsdk/sdk/video/TrackerData;

    .line 29
    iput-boolean v1, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideMarkup:Z

    .line 30
    iput-boolean v1, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideVideo:Z

    .line 31
    iput-boolean v1, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideInterstitial:Z

    .line 32
    iput-boolean v1, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideVideoList:Z

    .line 15
    return-void
.end method

.method private getBoolean(Ljava/lang/String;)Z
    .locals 2
    .parameter "text"

    .prologue
    const/4 v0, 0x0

    .line 573
    if-nez p1, :cond_1

    .line 581
    :cond_0
    :goto_0
    return v0

    .line 577
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 578
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getInteger(Ljava/lang/String;)I
    .locals 2
    .parameter "text"

    .prologue
    const/4 v0, -0x1

    .line 549
    if-nez p1, :cond_0

    .line 557
    :goto_0
    return v0

    .line 553
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 554
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getLong(Ljava/lang/String;)J
    .locals 3
    .parameter "text"

    .prologue
    const-wide/16 v0, -0x1

    .line 561
    if-nez p1, :cond_0

    .line 569
    :goto_0
    return-wide v0

    .line 565
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 566
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/adsdk/sdk/video/ResponseHandler;->contents:Ljava/io/CharArrayWriter;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/CharArrayWriter;->write([CII)V

    .line 38
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 43
    const-string v4, "creative"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 44
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v4

    if-nez v4, :cond_1

    .line 45
    :cond_0
    new-instance v4, Lorg/xml/sax/SAXException;

    const-string v5, "Creative tag found outside video node"

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v3

    .line 48
    .local v3, video:Lcom/adsdk/sdk/video/VideoData;
    iget-object v4, p0, Lcom/adsdk/sdk/video/ResponseHandler;->contents:Ljava/io/CharArrayWriter;

    invoke-virtual {v4}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/adsdk/sdk/video/VideoData;->videoUrl:Ljava/lang/String;

    .line 131
    .end local v3           #video:Lcom/adsdk/sdk/video/VideoData;
    :cond_2
    :goto_0
    return-void

    .line 49
    :cond_3
    const-string v4, "duration"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 50
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v4

    if-nez v4, :cond_5

    .line 51
    :cond_4
    new-instance v4, Lorg/xml/sax/SAXException;

    const-string v5, "Duration tag found outside video node"

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 53
    :cond_5
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v3

    .line 54
    .restart local v3       #video:Lcom/adsdk/sdk/video/VideoData;
    iget-object v4, p0, Lcom/adsdk/sdk/video/ResponseHandler;->contents:Ljava/io/CharArrayWriter;

    invoke-virtual {v4}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/adsdk/sdk/video/ResponseHandler;->getInteger(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/adsdk/sdk/video/VideoData;->duration:I

    goto :goto_0

    .line 55
    .end local v3           #video:Lcom/adsdk/sdk/video/VideoData;
    :cond_6
    const-string v4, "tracker"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 56
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v4

    if-nez v4, :cond_8

    .line 57
    :cond_7
    new-instance v4, Lorg/xml/sax/SAXException;

    const-string v5, "Tracker tag found outside video node"

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 59
    :cond_8
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v3

    .line 60
    .restart local v3       #video:Lcom/adsdk/sdk/video/VideoData;
    iget-object v4, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentTracker:Lcom/adsdk/sdk/video/TrackerData;

    iget-object v5, p0, Lcom/adsdk/sdk/video/ResponseHandler;->contents:Ljava/io/CharArrayWriter;

    invoke-virtual {v5}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/adsdk/sdk/video/TrackerData;->url:Ljava/lang/String;

    .line 61
    const/4 v1, 0x0

    .line 62
    .local v1, trackers:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentTracker:Lcom/adsdk/sdk/video/TrackerData;

    iget v4, v4, Lcom/adsdk/sdk/video/TrackerData;->type:I

    packed-switch v4, :pswitch_data_0

    .line 100
    :cond_9
    :goto_1
    if-eqz v1, :cond_2

    .line 101
    iget-object v4, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentTracker:Lcom/adsdk/sdk/video/TrackerData;

    iget-object v4, v4, Lcom/adsdk/sdk/video/TrackerData;->url:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 67
    :pswitch_0
    iget-object v4, v3, Lcom/adsdk/sdk/video/VideoData;->timeTrackingEvents:Ljava/util/HashMap;

    .line 68
    iget-object v5, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentTracker:Lcom/adsdk/sdk/video/TrackerData;

    iget v5, v5, Lcom/adsdk/sdk/video/TrackerData;->time:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #trackers:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    check-cast v1, Ljava/util/Vector;

    .line 69
    .restart local v1       #trackers:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    if-nez v1, :cond_9

    .line 70
    new-instance v1, Ljava/util/Vector;

    .end local v1           #trackers:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 71
    .restart local v1       #trackers:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    iget-object v4, v3, Lcom/adsdk/sdk/video/VideoData;->timeTrackingEvents:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentTracker:Lcom/adsdk/sdk/video/TrackerData;

    iget v5, v5, Lcom/adsdk/sdk/video/TrackerData;->time:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 76
    :pswitch_1
    invoke-virtual {v3}, Lcom/adsdk/sdk/video/VideoData;->getStartEvents()Ljava/util/Vector;

    move-result-object v1

    .line 77
    goto :goto_1

    .line 79
    :pswitch_2
    invoke-virtual {v3}, Lcom/adsdk/sdk/video/VideoData;->getCompleteEvents()Ljava/util/Vector;

    move-result-object v1

    .line 80
    goto :goto_1

    .line 82
    :pswitch_3
    iget-object v1, v3, Lcom/adsdk/sdk/video/VideoData;->pauseEvents:Ljava/util/Vector;

    .line 83
    goto :goto_1

    .line 85
    :pswitch_4
    iget-object v1, v3, Lcom/adsdk/sdk/video/VideoData;->unpauseEvents:Ljava/util/Vector;

    .line 86
    goto :goto_1

    .line 88
    :pswitch_5
    iget-object v1, v3, Lcom/adsdk/sdk/video/VideoData;->muteEvents:Ljava/util/Vector;

    .line 89
    goto :goto_1

    .line 91
    :pswitch_6
    iget-object v1, v3, Lcom/adsdk/sdk/video/VideoData;->unmuteEvents:Ljava/util/Vector;

    .line 92
    goto :goto_1

    .line 94
    :pswitch_7
    iget-object v1, v3, Lcom/adsdk/sdk/video/VideoData;->replayEvents:Ljava/util/Vector;

    .line 95
    goto :goto_1

    .line 97
    :pswitch_8
    iget-object v1, v3, Lcom/adsdk/sdk/video/VideoData;->skipEvents:Ljava/util/Vector;

    goto :goto_1

    .line 103
    .end local v1           #trackers:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v3           #video:Lcom/adsdk/sdk/video/VideoData;
    :cond_a
    const-string v4, "htmloverlay"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 104
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v4

    if-nez v4, :cond_c

    .line 105
    :cond_b
    new-instance v4, Lorg/xml/sax/SAXException;

    .line 106
    const-string v5, "htmloverlay tag found outside video node"

    .line 105
    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 108
    :cond_c
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v3

    .line 109
    .restart local v3       #video:Lcom/adsdk/sdk/video/VideoData;
    iget-object v4, p0, Lcom/adsdk/sdk/video/ResponseHandler;->contents:Ljava/io/CharArrayWriter;

    invoke-virtual {v4}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/adsdk/sdk/video/VideoData;->htmlOverlayMarkup:Ljava/lang/String;

    .line 110
    iput-boolean v7, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideMarkup:Z

    goto/16 :goto_0

    .line 111
    .end local v3           #video:Lcom/adsdk/sdk/video/VideoData;
    :cond_d
    const-string v4, "video"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 112
    iget-boolean v4, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideVideoList:Z

    if-eqz v4, :cond_e

    .line 113
    iget-object v4, p0, Lcom/adsdk/sdk/video/ResponseHandler;->contents:Ljava/io/CharArrayWriter;

    invoke-virtual {v4}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, url:Ljava/lang/String;
    iget-object v4, p0, Lcom/adsdk/sdk/video/ResponseHandler;->videoList:Ljava/util/HashMap;

    iget-wide v5, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentExpiration:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .end local v2           #url:Ljava/lang/String;
    :cond_e
    iput-boolean v7, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideVideo:Z

    goto/16 :goto_0

    .line 117
    :cond_f
    const-string v4, "interstitial"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 118
    iput-boolean v7, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideInterstitial:Z

    goto/16 :goto_0

    .line 119
    :cond_10
    const-string v4, "markup"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 120
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 121
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adsdk/sdk/video/RichMediaAd;->getInterstitial()Lcom/adsdk/sdk/video/InterstitialData;

    move-result-object v4

    if-nez v4, :cond_12

    .line 122
    :cond_11
    new-instance v4, Lorg/xml/sax/SAXException;

    .line 123
    const-string v5, "markup tag found outside interstitial node"

    .line 122
    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 125
    :cond_12
    iput-boolean v7, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideMarkup:Z

    .line 126
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adsdk/sdk/video/RichMediaAd;->getInterstitial()Lcom/adsdk/sdk/video/InterstitialData;

    move-result-object v0

    .line 127
    .local v0, inter:Lcom/adsdk/sdk/video/InterstitialData;
    iget-object v4, p0, Lcom/adsdk/sdk/video/ResponseHandler;->contents:Ljava/io/CharArrayWriter;

    invoke-virtual {v4}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/adsdk/sdk/video/InterstitialData;->interstitialMarkup:Ljava/lang/String;

    goto/16 :goto_0

    .line 128
    .end local v0           #inter:Lcom/adsdk/sdk/video/InterstitialData;
    :cond_13
    const-string v4, "error"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 129
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/adsdk/sdk/video/RichMediaAd;->setType(I)V

    goto/16 :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/adsdk/sdk/video/ResponseHandler;->richMediaAd:Lcom/adsdk/sdk/video/RichMediaAd;

    return-object v0
.end method

.method public setRichMediaAd(Lcom/adsdk/sdk/video/RichMediaAd;)V
    .locals 0
    .parameter "richMediaAd"

    .prologue
    .line 589
    iput-object p1, p0, Lcom/adsdk/sdk/video/ResponseHandler;->richMediaAd:Lcom/adsdk/sdk/video/RichMediaAd;

    .line 590
    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 135
    new-instance v0, Lcom/adsdk/sdk/video/RichMediaAd;

    invoke-direct {v0}, Lcom/adsdk/sdk/video/RichMediaAd;-><init>()V

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/ResponseHandler;->setRichMediaAd(Lcom/adsdk/sdk/video/RichMediaAd;)V

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideVideoList:Z

    .line 137
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 15
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 142
    iget-boolean v11, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideMarkup:Z

    if-nez v11, :cond_0

    .line 143
    iget-object v11, p0, Lcom/adsdk/sdk/video/ResponseHandler;->contents:Ljava/io/CharArrayWriter;

    invoke-virtual {v11}, Ljava/io/CharArrayWriter;->reset()V

    .line 144
    const-string v11, "activevideolist"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 145
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, p0, Lcom/adsdk/sdk/video/ResponseHandler;->videoList:Ljava/util/HashMap;

    .line 146
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideVideoList:Z

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    const-string v11, "ad"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 148
    const-string v11, "type"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 149
    .local v8, type:Ljava/lang/String;
    const-string v11, "video-to-interstitial"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 150
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Lcom/adsdk/sdk/video/RichMediaAd;->setType(I)V

    .line 162
    :goto_1
    const-string v11, "animation"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, animation:Ljava/lang/String;
    const-string v11, "fade-in"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 164
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/adsdk/sdk/video/RichMediaAd;->setAnimation(I)V

    goto :goto_0

    .line 151
    .end local v1           #animation:Ljava/lang/String;
    :cond_2
    const-string v11, "interstitial-to-video"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 152
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Lcom/adsdk/sdk/video/RichMediaAd;->setType(I)V

    goto :goto_1

    .line 153
    :cond_3
    const-string v11, "video"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 154
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Lcom/adsdk/sdk/video/RichMediaAd;->setType(I)V

    goto :goto_1

    .line 155
    :cond_4
    const-string v11, "interstitial"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 156
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    const/4 v12, 0x6

    invoke-virtual {v11, v12}, Lcom/adsdk/sdk/video/RichMediaAd;->setType(I)V

    goto :goto_1

    .line 157
    :cond_5
    const-string v11, "noAd"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 158
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/adsdk/sdk/video/RichMediaAd;->setType(I)V

    goto :goto_1

    .line 160
    :cond_6
    new-instance v11, Lorg/xml/sax/SAXException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Unknown response type "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 165
    .restart local v1       #animation:Ljava/lang/String;
    :cond_7
    const-string v11, "slide-in-top"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 166
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    .line 167
    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/adsdk/sdk/video/RichMediaAd;->setAnimation(I)V

    goto/16 :goto_0

    .line 168
    :cond_8
    const-string v11, "slide-in-bottom"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 169
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    .line 170
    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Lcom/adsdk/sdk/video/RichMediaAd;->setAnimation(I)V

    goto/16 :goto_0

    .line 171
    :cond_9
    const-string v11, "slide-in-left"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 172
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    .line 173
    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Lcom/adsdk/sdk/video/RichMediaAd;->setAnimation(I)V

    goto/16 :goto_0

    .line 174
    :cond_a
    const-string v11, "slide-in-right"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 175
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    .line 176
    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Lcom/adsdk/sdk/video/RichMediaAd;->setAnimation(I)V

    goto/16 :goto_0

    .line 177
    :cond_b
    const-string v11, "flip-in"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 178
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    const/4 v12, 0x6

    invoke-virtual {v11, v12}, Lcom/adsdk/sdk/video/RichMediaAd;->setAnimation(I)V

    goto/16 :goto_0

    .line 180
    :cond_c
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/adsdk/sdk/video/RichMediaAd;->setAnimation(I)V

    goto/16 :goto_0

    .line 182
    .end local v1           #animation:Ljava/lang/String;
    .end local v8           #type:Ljava/lang/String;
    :cond_d
    const-string v11, "video"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 183
    iget-boolean v11, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideVideoList:Z

    if-eqz v11, :cond_e

    .line 185
    const-string v11, "expiration"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 184
    invoke-direct {p0, v11}, Lcom/adsdk/sdk/video/ResponseHandler;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 185
    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    .line 184
    iput-wide v11, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentExpiration:J

    goto/16 :goto_0

    .line 187
    :cond_e
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideVideo:Z

    .line 188
    new-instance v10, Lcom/adsdk/sdk/video/VideoData;

    invoke-direct {v10}, Lcom/adsdk/sdk/video/VideoData;-><init>()V

    .line 189
    .local v10, video:Lcom/adsdk/sdk/video/VideoData;
    const-string v11, "orientation"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 190
    .local v6, orientation:Ljava/lang/String;
    const-string v11, "landscape"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 191
    const/4 v11, 0x0

    iput v11, v10, Lcom/adsdk/sdk/video/VideoData;->orientation:I

    .line 197
    :goto_2
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    if-eqz v11, :cond_12

    .line 198
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    invoke-virtual {v11}, Lcom/adsdk/sdk/video/RichMediaAd;->getType()I

    move-result v11

    const/4 v12, 0x6

    if-ne v11, v12, :cond_11

    .line 199
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    invoke-virtual {v11}, Lcom/adsdk/sdk/video/RichMediaAd;->getType()I

    move-result v11

    const/4 v12, 0x4

    if-eq v11, v12, :cond_11

    .line 200
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    invoke-virtual {v11}, Lcom/adsdk/sdk/video/RichMediaAd;->getType()I

    move-result v11

    const/4 v12, 0x3

    if-eq v11, v12, :cond_11

    .line 201
    new-instance v11, Lorg/xml/sax/SAXException;

    .line 202
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Found Video tag in an interstitial ad:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v13

    invoke-virtual {v13}, Lcom/adsdk/sdk/video/RichMediaAd;->getType()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 202
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 201
    invoke-direct {v11, v12}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 192
    :cond_f
    const-string v11, "portrait"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 193
    const/4 v11, 0x1

    iput v11, v10, Lcom/adsdk/sdk/video/VideoData;->orientation:I

    goto :goto_2

    .line 195
    :cond_10
    const/4 v11, 0x0

    iput v11, v10, Lcom/adsdk/sdk/video/VideoData;->orientation:I

    goto :goto_2

    .line 205
    :cond_11
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/adsdk/sdk/video/RichMediaAd;->setVideo(Lcom/adsdk/sdk/video/VideoData;)V

    goto/16 :goto_0

    .line 207
    :cond_12
    new-instance v11, Lorg/xml/sax/SAXException;

    .line 208
    const-string v12, "Video tag found outside document root"

    .line 207
    invoke-direct {v11, v12}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 211
    .end local v6           #orientation:Ljava/lang/String;
    .end local v10           #video:Lcom/adsdk/sdk/video/VideoData;
    :cond_13
    const-string v11, "interstitial"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1e

    .line 212
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideInterstitial:Z

    .line 213
    new-instance v5, Lcom/adsdk/sdk/video/InterstitialData;

    invoke-direct {v5}, Lcom/adsdk/sdk/video/InterstitialData;-><init>()V

    .line 214
    .local v5, inter:Lcom/adsdk/sdk/video/InterstitialData;
    const-string v11, "autoclose"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/adsdk/sdk/video/ResponseHandler;->getInteger(Ljava/lang/String;)I

    move-result v11

    iput v11, v5, Lcom/adsdk/sdk/video/InterstitialData;->autoclose:I

    .line 215
    const-string v11, "type"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 216
    .restart local v8       #type:Ljava/lang/String;
    const-string v11, "url"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 217
    const/4 v11, 0x0

    iput v11, v5, Lcom/adsdk/sdk/video/InterstitialData;->interstitialType:I

    .line 218
    const-string v11, "url"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 219
    .local v9, url:Ljava/lang/String;
    if-eqz v9, :cond_14

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_15

    .line 220
    :cond_14
    new-instance v11, Lorg/xml/sax/SAXException;

    .line 221
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Empty url for interstitial type "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 220
    invoke-direct {v11, v12}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 223
    :cond_15
    iput-object v9, v5, Lcom/adsdk/sdk/video/InterstitialData;->interstitialUrl:Ljava/lang/String;

    .line 238
    .end local v9           #url:Ljava/lang/String;
    :goto_3
    const-string v11, "orientation"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 239
    .restart local v6       #orientation:Ljava/lang/String;
    const-string v11, "landscape"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 240
    const/4 v11, 0x0

    iput v11, v5, Lcom/adsdk/sdk/video/InterstitialData;->orientation:I

    .line 246
    :goto_4
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    if-eqz v11, :cond_1d

    .line 247
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    invoke-virtual {v11}, Lcom/adsdk/sdk/video/RichMediaAd;->getType()I

    move-result v11

    const/4 v12, 0x5

    if-ne v11, v12, :cond_1c

    .line 248
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    invoke-virtual {v11}, Lcom/adsdk/sdk/video/RichMediaAd;->getType()I

    move-result v11

    const/4 v12, 0x4

    if-eq v11, v12, :cond_1c

    .line 249
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    invoke-virtual {v11}, Lcom/adsdk/sdk/video/RichMediaAd;->getType()I

    move-result v11

    const/4 v12, 0x3

    if-eq v11, v12, :cond_1c

    .line 250
    new-instance v11, Lorg/xml/sax/SAXException;

    .line 251
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Found Interstitial tag in a video ad:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v13

    invoke-virtual {v13}, Lcom/adsdk/sdk/video/RichMediaAd;->getType()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 251
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 250
    invoke-direct {v11, v12}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 224
    .end local v6           #orientation:Ljava/lang/String;
    :cond_16
    const-string v11, "markup"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 225
    const/4 v11, 0x1

    iput v11, v5, Lcom/adsdk/sdk/video/InterstitialData;->interstitialType:I

    .line 226
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideMarkup:Z

    goto :goto_3

    .line 228
    :cond_17
    const/4 v11, 0x0

    iput v11, v5, Lcom/adsdk/sdk/video/InterstitialData;->interstitialType:I

    .line 229
    const-string v11, "url"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 230
    .restart local v9       #url:Ljava/lang/String;
    if-eqz v9, :cond_18

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_19

    .line 231
    :cond_18
    new-instance v11, Lorg/xml/sax/SAXException;

    .line 232
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Empty url for interstitial type "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 231
    invoke-direct {v11, v12}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 234
    :cond_19
    iput-object v9, v5, Lcom/adsdk/sdk/video/InterstitialData;->interstitialUrl:Ljava/lang/String;

    goto/16 :goto_3

    .line 241
    .end local v9           #url:Ljava/lang/String;
    .restart local v6       #orientation:Ljava/lang/String;
    :cond_1a
    const-string v11, "portrait"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 242
    const/4 v11, 0x1

    iput v11, v5, Lcom/adsdk/sdk/video/InterstitialData;->orientation:I

    goto/16 :goto_4

    .line 244
    :cond_1b
    const/4 v11, 0x0

    iput v11, v5, Lcom/adsdk/sdk/video/InterstitialData;->orientation:I

    goto/16 :goto_4

    .line 254
    :cond_1c
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/adsdk/sdk/video/RichMediaAd;->setInterstitial(Lcom/adsdk/sdk/video/InterstitialData;)V

    goto/16 :goto_0

    .line 256
    :cond_1d
    new-instance v11, Lorg/xml/sax/SAXException;

    .line 257
    const-string v12, "Interstitial tag found outside document root"

    .line 256
    invoke-direct {v11, v12}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 259
    .end local v5           #inter:Lcom/adsdk/sdk/video/InterstitialData;
    .end local v6           #orientation:Ljava/lang/String;
    .end local v8           #type:Ljava/lang/String;
    :cond_1e
    const-string v11, "creative"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_27

    .line 260
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    if-eqz v11, :cond_1f

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    invoke-virtual {v11}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v11

    if-nez v11, :cond_20

    .line 261
    :cond_1f
    new-instance v11, Lorg/xml/sax/SAXException;

    .line 262
    const-string v12, "Creative tag found outside video node"

    .line 261
    invoke-direct {v11, v12}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 264
    :cond_20
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    invoke-virtual {v11}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v10

    .line 265
    .restart local v10       #video:Lcom/adsdk/sdk/video/VideoData;
    const-string v11, "delivery"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, delivery:Ljava/lang/String;
    const-string v11, "progressive"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_23

    .line 267
    const/4 v11, 0x0

    iput v11, v10, Lcom/adsdk/sdk/video/VideoData;->delivery:I

    .line 273
    :goto_5
    const-string v11, "type"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 274
    .restart local v8       #type:Ljava/lang/String;
    if-eqz v8, :cond_21

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_22

    .line 275
    :cond_21
    const-string v8, "application/mp4"

    .line 277
    :cond_22
    const-string v11, "display"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 278
    .local v3, display:Ljava/lang/String;
    const-string v11, "fullscreen"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_25

    .line 279
    const/4 v11, 0x0

    iput v11, v10, Lcom/adsdk/sdk/video/VideoData;->display:I

    .line 286
    :goto_6
    iput-object v8, v10, Lcom/adsdk/sdk/video/VideoData;->type:Ljava/lang/String;

    .line 287
    const-string v11, "width"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/adsdk/sdk/video/ResponseHandler;->getInteger(Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lcom/adsdk/sdk/video/VideoData;->width:I

    .line 288
    const-string v11, "height"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/adsdk/sdk/video/ResponseHandler;->getInteger(Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lcom/adsdk/sdk/video/VideoData;->height:I

    .line 289
    const-string v11, "bitrate"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/adsdk/sdk/video/ResponseHandler;->getInteger(Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lcom/adsdk/sdk/video/VideoData;->bitrate:I

    goto/16 :goto_0

    .line 268
    .end local v3           #display:Ljava/lang/String;
    .end local v8           #type:Ljava/lang/String;
    :cond_23
    const-string v11, "streaming"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_24

    .line 269
    const/4 v11, 0x1

    iput v11, v10, Lcom/adsdk/sdk/video/VideoData;->delivery:I

    goto :goto_5

    .line 271
    :cond_24
    const/4 v11, 0x1

    iput v11, v10, Lcom/adsdk/sdk/video/VideoData;->delivery:I

    goto :goto_5

    .line 280
    .restart local v3       #display:Ljava/lang/String;
    .restart local v8       #type:Ljava/lang/String;
    :cond_25
    const-string v11, "normal"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_26

    .line 282
    const/4 v11, 0x0

    iput v11, v10, Lcom/adsdk/sdk/video/VideoData;->display:I

    goto :goto_6

    .line 284
    :cond_26
    const/4 v11, 0x0

    iput v11, v10, Lcom/adsdk/sdk/video/VideoData;->display:I

    goto :goto_6

    .line 290
    .end local v2           #delivery:Ljava/lang/String;
    .end local v3           #display:Ljava/lang/String;
    .end local v8           #type:Ljava/lang/String;
    .end local v10           #video:Lcom/adsdk/sdk/video/VideoData;
    :cond_27
    const-string v11, "skipbutton"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2d

    .line 291
    iget-boolean v11, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideVideo:Z

    if-eqz v11, :cond_2a

    .line 292
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    if-eqz v11, :cond_28

    .line 293
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    invoke-virtual {v11}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v11

    if-nez v11, :cond_29

    .line 294
    :cond_28
    new-instance v11, Lorg/xml/sax/SAXException;

    .line 295
    const-string v12, "skipbutton tag found inside wrong video node"

    .line 294
    invoke-direct {v11, v12}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 297
    :cond_29
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    invoke-virtual {v11}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v10

    .line 299
    .restart local v10       #video:Lcom/adsdk/sdk/video/VideoData;
    const-string v11, "show"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 298
    invoke-direct {p0, v11}, Lcom/adsdk/sdk/video/ResponseHandler;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v10, Lcom/adsdk/sdk/video/VideoData;->showSkipButton:Z

    .line 301
    const-string v11, "showafter"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 300
    invoke-direct {p0, v11}, Lcom/adsdk/sdk/video/ResponseHandler;->getInteger(Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lcom/adsdk/sdk/video/VideoData;->showSkipButtonAfter:I

    .line 302
    const-string v11, "graphic"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/adsdk/sdk/video/VideoData;->skipButtonImage:Ljava/lang/String;

    goto/16 :goto_0

    .line 304
    .end local v10           #video:Lcom/adsdk/sdk/video/VideoData;
    :cond_2a
    iget-boolean v11, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideInterstitial:Z

    if-eqz v11, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    if-eqz v11, :cond_2b

    .line 306
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    invoke-virtual {v11}, Lcom/adsdk/sdk/video/RichMediaAd;->getInterstitial()Lcom/adsdk/sdk/video/InterstitialData;

    move-result-object v11

    if-nez v11, :cond_2c

    .line 307
    :cond_2b
    new-instance v11, Lorg/xml/sax/SAXException;

    .line 308
    const-string v12, "skipbutton tag found inside wrong interstitial node"

    .line 307
    invoke-direct {v11, v12}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 310
    :cond_2c
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    invoke-virtual {v11}, Lcom/adsdk/sdk/video/RichMediaAd;->getInterstitial()Lcom/adsdk/sdk/video/InterstitialData;

    move-result-object v5

    .line 312
    .restart local v5       #inter:Lcom/adsdk/sdk/video/InterstitialData;
    const-string v11, "show"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 311
    invoke-direct {p0, v11}, Lcom/adsdk/sdk/video/ResponseHandler;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v5, Lcom/adsdk/sdk/video/InterstitialData;->showSkipButton:Z

    .line 314
    const-string v11, "showafter"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 313
    invoke-direct {p0, v11}, Lcom/adsdk/sdk/video/ResponseHandler;->getInteger(Ljava/lang/String;)I

    move-result v11

    iput v11, v5, Lcom/adsdk/sdk/video/InterstitialData;->showSkipButtonAfter:I

    .line 315
    const-string v11, "graphic"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v5, Lcom/adsdk/sdk/video/InterstitialData;->skipButtonImage:Ljava/lang/String;

    goto/16 :goto_0

    .line 317
    .end local v5           #inter:Lcom/adsdk/sdk/video/InterstitialData;
    :cond_2d
    const-string v11, "navigation"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_33

    .line 318
    iget-boolean v11, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideVideo:Z

    if-eqz v11, :cond_30

    .line 319
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    if-eqz v11, :cond_2e

    .line 320
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    invoke-virtual {v11}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v11

    if-nez v11, :cond_2f

    .line 321
    :cond_2e
    new-instance v11, Lorg/xml/sax/SAXException;

    .line 322
    const-string v12, "navigation tag found inside wrong video node"

    .line 321
    invoke-direct {v11, v12}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 324
    :cond_2f
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    invoke-virtual {v11}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v10

    .line 326
    .restart local v10       #video:Lcom/adsdk/sdk/video/VideoData;
    const-string v11, "show"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 325
    invoke-direct {p0, v11}, Lcom/adsdk/sdk/video/ResponseHandler;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v10, Lcom/adsdk/sdk/video/VideoData;->showNavigationBars:Z

    .line 328
    const-string v11, "allowtap"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 327
    invoke-direct {p0, v11}, Lcom/adsdk/sdk/video/ResponseHandler;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v10, Lcom/adsdk/sdk/video/VideoData;->allowTapNavigationBars:Z

    goto/16 :goto_0

    .line 330
    .end local v10           #video:Lcom/adsdk/sdk/video/VideoData;
    :cond_30
    iget-boolean v11, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideInterstitial:Z

    if-eqz v11, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    if-eqz v11, :cond_31

    .line 332
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    invoke-virtual {v11}, Lcom/adsdk/sdk/video/RichMediaAd;->getInterstitial()Lcom/adsdk/sdk/video/InterstitialData;

    move-result-object v11

    if-nez v11, :cond_32

    .line 333
    :cond_31
    new-instance v11, Lorg/xml/sax/SAXException;

    .line 334
    const-string v12, "navigation tag found inside wrong interstitial node"

    .line 333
    invoke-direct {v11, v12}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 336
    :cond_32
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    invoke-virtual {v11}, Lcom/adsdk/sdk/video/RichMediaAd;->getInterstitial()Lcom/adsdk/sdk/video/InterstitialData;

    move-result-object v5

    .line 338
    .restart local v5       #inter:Lcom/adsdk/sdk/video/InterstitialData;
    const-string v11, "show"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 337
    invoke-direct {p0, v11}, Lcom/adsdk/sdk/video/ResponseHandler;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v5, Lcom/adsdk/sdk/video/InterstitialData;->showNavigationBars:Z

    .line 340
    const-string v11, "allowtap"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 339
    invoke-direct {p0, v11}, Lcom/adsdk/sdk/video/ResponseHandler;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v5, Lcom/adsdk/sdk/video/InterstitialData;->allowTapNavigationBars:Z

    goto/16 :goto_0

    .line 342
    .end local v5           #inter:Lcom/adsdk/sdk/video/InterstitialData;
    :cond_33
    const-string v11, "topbar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3b

    .line 343
    iget-boolean v11, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideVideo:Z

    if-eqz v11, :cond_36

    .line 344
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    if-eqz v11, :cond_34

    .line 345
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    invoke-virtual {v11}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v11

    if-nez v11, :cond_35

    .line 346
    :cond_34
    new-instance v11, Lorg/xml/sax/SAXException;

    .line 347
    const-string v12, "topbar tag found inside wrong video node"

    .line 346
    invoke-direct {v11, v12}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 349
    :cond_35
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    invoke-virtual {v11}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v10

    .line 351
    .restart local v10       #video:Lcom/adsdk/sdk/video/VideoData;
    const-string v11, "show"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 350
    invoke-direct {p0, v11}, Lcom/adsdk/sdk/video/ResponseHandler;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v10, Lcom/adsdk/sdk/video/VideoData;->showTopNavigationBar:Z

    .line 353
    const-string v11, "custombackgroundurl"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 352
    iput-object v11, v10, Lcom/adsdk/sdk/video/VideoData;->topNavigationBarBackground:Ljava/lang/String;

    goto/16 :goto_0

    .line 354
    .end local v10           #video:Lcom/adsdk/sdk/video/VideoData;
    :cond_36
    iget-boolean v11, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideInterstitial:Z

    if-eqz v11, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    if-eqz v11, :cond_37

    .line 356
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    invoke-virtual {v11}, Lcom/adsdk/sdk/video/RichMediaAd;->getInterstitial()Lcom/adsdk/sdk/video/InterstitialData;

    move-result-object v11

    if-nez v11, :cond_38

    .line 357
    :cond_37
    new-instance v11, Lorg/xml/sax/SAXException;

    .line 358
    const-string v12, "topbar tag found inside wrong interstitial node"

    .line 357
    invoke-direct {v11, v12}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 360
    :cond_38
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    invoke-virtual {v11}, Lcom/adsdk/sdk/video/RichMediaAd;->getInterstitial()Lcom/adsdk/sdk/video/InterstitialData;

    move-result-object v5

    .line 362
    .restart local v5       #inter:Lcom/adsdk/sdk/video/InterstitialData;
    const-string v11, "show"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 361
    invoke-direct {p0, v11}, Lcom/adsdk/sdk/video/ResponseHandler;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v5, Lcom/adsdk/sdk/video/InterstitialData;->showTopNavigationBar:Z

    .line 364
    const-string v11, "custombackgroundurl"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 363
    iput-object v11, v5, Lcom/adsdk/sdk/video/InterstitialData;->topNavigationBarBackground:Ljava/lang/String;

    .line 365
    const-string v11, "title"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 366
    .local v7, titleType:Ljava/lang/String;
    const-string v11, "fixed"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_39

    .line 367
    const/4 v11, 0x0

    iput v11, v5, Lcom/adsdk/sdk/video/InterstitialData;->topNavigationBarTitleType:I

    .line 369
    const-string v11, "titlecontent"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 368
    iput-object v11, v5, Lcom/adsdk/sdk/video/InterstitialData;->topNavigationBarTitle:Ljava/lang/String;

    goto/16 :goto_0

    .line 370
    :cond_39
    const-string v11, "variable"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3a

    .line 371
    const/4 v11, 0x1

    iput v11, v5, Lcom/adsdk/sdk/video/InterstitialData;->topNavigationBarTitleType:I

    goto/16 :goto_0

    .line 374
    :cond_3a
    const/4 v11, 0x2

    iput v11, v5, Lcom/adsdk/sdk/video/InterstitialData;->topNavigationBarTitleType:I

    goto/16 :goto_0

    .line 377
    .end local v5           #inter:Lcom/adsdk/sdk/video/InterstitialData;
    .end local v7           #titleType:Ljava/lang/String;
    :cond_3b
    const-string v11, "bottombar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_41

    .line 378
    iget-boolean v11, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideVideo:Z

    if-eqz v11, :cond_3e

    .line 379
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    if-eqz v11, :cond_3c

    .line 380
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    invoke-virtual {v11}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v11

    if-nez v11, :cond_3d

    .line 381
    :cond_3c
    new-instance v11, Lorg/xml/sax/SAXException;

    .line 382
    const-string v12, "bottombar tag found inside wrong video node"

    .line 381
    invoke-direct {v11, v12}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 384
    :cond_3d
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    invoke-virtual {v11}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v10

    .line 386
    .restart local v10       #video:Lcom/adsdk/sdk/video/VideoData;
    const-string v11, "show"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 385
    invoke-direct {p0, v11}, Lcom/adsdk/sdk/video/ResponseHandler;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v10, Lcom/adsdk/sdk/video/VideoData;->showBottomNavigationBar:Z

    .line 388
    const-string v11, "custombackgroundurl"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 387
    iput-object v11, v10, Lcom/adsdk/sdk/video/VideoData;->bottomNavigationBarBackground:Ljava/lang/String;

    .line 390
    const-string v11, "pausebutton"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 389
    invoke-direct {p0, v11}, Lcom/adsdk/sdk/video/ResponseHandler;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v10, Lcom/adsdk/sdk/video/VideoData;->showPauseButton:Z

    .line 392
    const-string v11, "replaybutton"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 391
    invoke-direct {p0, v11}, Lcom/adsdk/sdk/video/ResponseHandler;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v10, Lcom/adsdk/sdk/video/VideoData;->showReplayButton:Z

    .line 393
    const-string v11, "timer"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/adsdk/sdk/video/ResponseHandler;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v10, Lcom/adsdk/sdk/video/VideoData;->showTimer:Z

    .line 395
    const-string v11, "pausebuttonurl"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 394
    iput-object v11, v10, Lcom/adsdk/sdk/video/VideoData;->pauseButtonImage:Ljava/lang/String;

    .line 397
    const-string v11, "playbuttonurl"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 396
    iput-object v11, v10, Lcom/adsdk/sdk/video/VideoData;->playButtonImage:Ljava/lang/String;

    .line 399
    const-string v11, "replaybuttonurl"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 398
    iput-object v11, v10, Lcom/adsdk/sdk/video/VideoData;->replayButtonImage:Ljava/lang/String;

    goto/16 :goto_0

    .line 400
    .end local v10           #video:Lcom/adsdk/sdk/video/VideoData;
    :cond_3e
    iget-boolean v11, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideInterstitial:Z

    if-eqz v11, :cond_0

    .line 401
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    if-eqz v11, :cond_3f

    .line 402
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    invoke-virtual {v11}, Lcom/adsdk/sdk/video/RichMediaAd;->getInterstitial()Lcom/adsdk/sdk/video/InterstitialData;

    move-result-object v11

    if-nez v11, :cond_40

    .line 403
    :cond_3f
    new-instance v11, Lorg/xml/sax/SAXException;

    .line 404
    const-string v12, "bottombar tag found inside wrong interstitial node"

    .line 403
    invoke-direct {v11, v12}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 406
    :cond_40
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    invoke-virtual {v11}, Lcom/adsdk/sdk/video/RichMediaAd;->getInterstitial()Lcom/adsdk/sdk/video/InterstitialData;

    move-result-object v5

    .line 408
    .restart local v5       #inter:Lcom/adsdk/sdk/video/InterstitialData;
    const-string v11, "show"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 407
    invoke-direct {p0, v11}, Lcom/adsdk/sdk/video/ResponseHandler;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v5, Lcom/adsdk/sdk/video/InterstitialData;->showBottomNavigationBar:Z

    .line 410
    const-string v11, "custombackgroundurl"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 409
    iput-object v11, v5, Lcom/adsdk/sdk/video/InterstitialData;->bottomNavigationBarBackground:Ljava/lang/String;

    .line 412
    const-string v11, "backbutton"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 411
    invoke-direct {p0, v11}, Lcom/adsdk/sdk/video/ResponseHandler;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v5, Lcom/adsdk/sdk/video/InterstitialData;->showBackButton:Z

    .line 414
    const-string v11, "forwardbutton"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 413
    invoke-direct {p0, v11}, Lcom/adsdk/sdk/video/ResponseHandler;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v5, Lcom/adsdk/sdk/video/InterstitialData;->showForwardButton:Z

    .line 416
    const-string v11, "reloadbutton"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 415
    invoke-direct {p0, v11}, Lcom/adsdk/sdk/video/ResponseHandler;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v5, Lcom/adsdk/sdk/video/InterstitialData;->showReloadButton:Z

    .line 418
    const-string v11, "externalbutton"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 417
    invoke-direct {p0, v11}, Lcom/adsdk/sdk/video/ResponseHandler;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v5, Lcom/adsdk/sdk/video/InterstitialData;->showExternalButton:Z

    .line 419
    const-string v11, "timer"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/adsdk/sdk/video/ResponseHandler;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v5, Lcom/adsdk/sdk/video/InterstitialData;->showTimer:Z

    .line 421
    const-string v11, "backbuttonurl"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 420
    iput-object v11, v5, Lcom/adsdk/sdk/video/InterstitialData;->backButtonImage:Ljava/lang/String;

    .line 423
    const-string v11, "forwardbuttonurl"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 422
    iput-object v11, v5, Lcom/adsdk/sdk/video/InterstitialData;->forwardButtonImage:Ljava/lang/String;

    .line 425
    const-string v11, "reloadbuttonurl"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 424
    iput-object v11, v5, Lcom/adsdk/sdk/video/InterstitialData;->reloadButtonImage:Ljava/lang/String;

    .line 427
    const-string v11, "externalbuttonurl"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 426
    iput-object v11, v5, Lcom/adsdk/sdk/video/InterstitialData;->externalButtonImage:Ljava/lang/String;

    goto/16 :goto_0

    .line 429
    .end local v5           #inter:Lcom/adsdk/sdk/video/InterstitialData;
    :cond_41
    const-string v11, "navicon"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_49

    .line 430
    iget-boolean v11, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideVideo:Z

    if-eqz v11, :cond_45

    .line 431
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    if-eqz v11, :cond_42

    .line 432
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    invoke-virtual {v11}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v11

    if-nez v11, :cond_43

    .line 433
    :cond_42
    new-instance v11, Lorg/xml/sax/SAXException;

    .line 434
    const-string v12, "navicon tag found inside wrong video node"

    .line 433
    invoke-direct {v11, v12}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 436
    :cond_43
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    invoke-virtual {v11}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v10

    .line 437
    .restart local v10       #video:Lcom/adsdk/sdk/video/VideoData;
    new-instance v4, Lcom/adsdk/sdk/video/NavIconData;

    invoke-direct {v4}, Lcom/adsdk/sdk/video/NavIconData;-><init>()V

    .line 438
    .local v4, icon:Lcom/adsdk/sdk/video/NavIconData;
    const-string v11, "title"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/adsdk/sdk/video/NavIconData;->title:Ljava/lang/String;

    .line 439
    const-string v11, "clickurl"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/adsdk/sdk/video/NavIconData;->clickUrl:Ljava/lang/String;

    .line 440
    const-string v11, "iconurl"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/adsdk/sdk/video/NavIconData;->iconUrl:Ljava/lang/String;

    .line 441
    const-string v11, "opentype"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 442
    .restart local v8       #type:Ljava/lang/String;
    const-string v11, "inapp"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_44

    .line 443
    const/4 v11, 0x0

    iput v11, v4, Lcom/adsdk/sdk/video/NavIconData;->openType:I

    .line 447
    :goto_7
    iget-object v11, v10, Lcom/adsdk/sdk/video/VideoData;->icons:Ljava/util/Vector;

    invoke-virtual {v11, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 445
    :cond_44
    const/4 v11, 0x1

    iput v11, v4, Lcom/adsdk/sdk/video/NavIconData;->openType:I

    goto :goto_7

    .line 448
    .end local v4           #icon:Lcom/adsdk/sdk/video/NavIconData;
    .end local v8           #type:Ljava/lang/String;
    .end local v10           #video:Lcom/adsdk/sdk/video/VideoData;
    :cond_45
    iget-boolean v11, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideInterstitial:Z

    if-eqz v11, :cond_0

    .line 449
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    if-eqz v11, :cond_46

    .line 450
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    invoke-virtual {v11}, Lcom/adsdk/sdk/video/RichMediaAd;->getInterstitial()Lcom/adsdk/sdk/video/InterstitialData;

    move-result-object v11

    if-nez v11, :cond_47

    .line 451
    :cond_46
    new-instance v11, Lorg/xml/sax/SAXException;

    .line 452
    const-string v12, "navicon tag found inside wrong interstitial node"

    .line 451
    invoke-direct {v11, v12}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 454
    :cond_47
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    invoke-virtual {v11}, Lcom/adsdk/sdk/video/RichMediaAd;->getInterstitial()Lcom/adsdk/sdk/video/InterstitialData;

    move-result-object v5

    .line 455
    .restart local v5       #inter:Lcom/adsdk/sdk/video/InterstitialData;
    new-instance v4, Lcom/adsdk/sdk/video/NavIconData;

    invoke-direct {v4}, Lcom/adsdk/sdk/video/NavIconData;-><init>()V

    .line 456
    .restart local v4       #icon:Lcom/adsdk/sdk/video/NavIconData;
    const-string v11, "title"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/adsdk/sdk/video/NavIconData;->title:Ljava/lang/String;

    .line 457
    const-string v11, "clickurl"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/adsdk/sdk/video/NavIconData;->clickUrl:Ljava/lang/String;

    .line 458
    const-string v11, "iconurl"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/adsdk/sdk/video/NavIconData;->iconUrl:Ljava/lang/String;

    .line 459
    const-string v11, "opentype"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 460
    .restart local v8       #type:Ljava/lang/String;
    const-string v11, "inapp"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_48

    .line 461
    const/4 v11, 0x0

    iput v11, v4, Lcom/adsdk/sdk/video/NavIconData;->openType:I

    .line 465
    :goto_8
    iget-object v11, v5, Lcom/adsdk/sdk/video/InterstitialData;->icons:Ljava/util/Vector;

    invoke-virtual {v11, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 463
    :cond_48
    const/4 v11, 0x1

    iput v11, v4, Lcom/adsdk/sdk/video/NavIconData;->openType:I

    goto :goto_8

    .line 467
    .end local v4           #icon:Lcom/adsdk/sdk/video/NavIconData;
    .end local v5           #inter:Lcom/adsdk/sdk/video/InterstitialData;
    .end local v8           #type:Ljava/lang/String;
    :cond_49
    const-string v11, "tracker"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_57

    .line 468
    iget-boolean v11, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideVideo:Z

    if-eqz v11, :cond_0

    .line 469
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    if-eqz v11, :cond_4a

    .line 470
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    invoke-virtual {v11}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v11

    if-nez v11, :cond_4b

    .line 471
    :cond_4a
    new-instance v11, Lorg/xml/sax/SAXException;

    .line 472
    const-string v12, "tracker tag found inside wrong video node"

    .line 471
    invoke-direct {v11, v12}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 474
    :cond_4b
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    invoke-virtual {v11}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v10

    .line 475
    .restart local v10       #video:Lcom/adsdk/sdk/video/VideoData;
    iget-object v11, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentTracker:Lcom/adsdk/sdk/video/TrackerData;

    invoke-virtual {v11}, Lcom/adsdk/sdk/video/TrackerData;->reset()V

    .line 476
    const-string v11, "type"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 477
    .restart local v8       #type:Ljava/lang/String;
    const-string v11, "start"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4c

    .line 478
    iget-object v11, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentTracker:Lcom/adsdk/sdk/video/TrackerData;

    const/4 v12, 0x0

    iput v12, v11, Lcom/adsdk/sdk/video/TrackerData;->type:I

    goto/16 :goto_0

    .line 479
    :cond_4c
    const-string v11, "complete"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4d

    .line 480
    iget-object v11, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentTracker:Lcom/adsdk/sdk/video/TrackerData;

    const/4 v12, 0x1

    iput v12, v11, Lcom/adsdk/sdk/video/TrackerData;->type:I

    goto/16 :goto_0

    .line 481
    :cond_4d
    const-string v11, "midpoint"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4e

    .line 482
    iget-object v11, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentTracker:Lcom/adsdk/sdk/video/TrackerData;

    const/4 v12, 0x2

    iput v12, v11, Lcom/adsdk/sdk/video/TrackerData;->type:I

    .line 483
    iget-object v11, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentTracker:Lcom/adsdk/sdk/video/TrackerData;

    iget v12, v10, Lcom/adsdk/sdk/video/VideoData;->duration:I

    div-int/lit8 v12, v12, 0x2

    iput v12, v11, Lcom/adsdk/sdk/video/TrackerData;->time:I

    goto/16 :goto_0

    .line 484
    :cond_4e
    const-string v11, "firstquartile"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4f

    .line 485
    iget-object v11, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentTracker:Lcom/adsdk/sdk/video/TrackerData;

    const/4 v12, 0x3

    iput v12, v11, Lcom/adsdk/sdk/video/TrackerData;->type:I

    .line 486
    iget-object v11, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentTracker:Lcom/adsdk/sdk/video/TrackerData;

    iget v12, v10, Lcom/adsdk/sdk/video/VideoData;->duration:I

    div-int/lit8 v12, v12, 0x4

    iput v12, v11, Lcom/adsdk/sdk/video/TrackerData;->time:I

    goto/16 :goto_0

    .line 487
    :cond_4f
    const-string v11, "thirdquartile"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_50

    .line 488
    iget-object v11, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentTracker:Lcom/adsdk/sdk/video/TrackerData;

    const/4 v12, 0x4

    iput v12, v11, Lcom/adsdk/sdk/video/TrackerData;->type:I

    .line 489
    iget-object v11, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentTracker:Lcom/adsdk/sdk/video/TrackerData;

    iget v12, v10, Lcom/adsdk/sdk/video/VideoData;->duration:I

    mul-int/lit8 v12, v12, 0x3

    div-int/lit8 v12, v12, 0x4

    iput v12, v11, Lcom/adsdk/sdk/video/TrackerData;->time:I

    goto/16 :goto_0

    .line 490
    :cond_50
    const-string v11, "pause"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_51

    .line 491
    iget-object v11, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentTracker:Lcom/adsdk/sdk/video/TrackerData;

    const/4 v12, 0x6

    iput v12, v11, Lcom/adsdk/sdk/video/TrackerData;->type:I

    goto/16 :goto_0

    .line 492
    :cond_51
    const-string v11, "unpause"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_52

    .line 493
    iget-object v11, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentTracker:Lcom/adsdk/sdk/video/TrackerData;

    const/4 v12, 0x7

    iput v12, v11, Lcom/adsdk/sdk/video/TrackerData;->type:I

    goto/16 :goto_0

    .line 494
    :cond_52
    const-string v11, "mute"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_53

    .line 495
    iget-object v11, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentTracker:Lcom/adsdk/sdk/video/TrackerData;

    const/16 v12, 0x8

    iput v12, v11, Lcom/adsdk/sdk/video/TrackerData;->type:I

    goto/16 :goto_0

    .line 496
    :cond_53
    const-string v11, "unmute"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_54

    .line 497
    iget-object v11, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentTracker:Lcom/adsdk/sdk/video/TrackerData;

    const/16 v12, 0x9

    iput v12, v11, Lcom/adsdk/sdk/video/TrackerData;->type:I

    goto/16 :goto_0

    .line 498
    :cond_54
    const-string v11, "replay"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_55

    .line 499
    iget-object v11, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentTracker:Lcom/adsdk/sdk/video/TrackerData;

    const/16 v12, 0xb

    iput v12, v11, Lcom/adsdk/sdk/video/TrackerData;->type:I

    goto/16 :goto_0

    .line 500
    :cond_55
    const-string v11, "skip"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_56

    .line 501
    iget-object v11, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentTracker:Lcom/adsdk/sdk/video/TrackerData;

    const/16 v12, 0xa

    iput v12, v11, Lcom/adsdk/sdk/video/TrackerData;->type:I

    goto/16 :goto_0

    .line 502
    :cond_56
    if-eqz v8, :cond_0

    const-string v11, "sec:"

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 503
    iget-object v11, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentTracker:Lcom/adsdk/sdk/video/TrackerData;

    const/4 v12, 0x5

    iput v12, v11, Lcom/adsdk/sdk/video/TrackerData;->type:I

    .line 504
    iget-object v11, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentTracker:Lcom/adsdk/sdk/video/TrackerData;

    const/4 v12, 0x4

    invoke-virtual {v8, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/adsdk/sdk/video/ResponseHandler;->getInteger(Ljava/lang/String;)I

    move-result v12

    iput v12, v11, Lcom/adsdk/sdk/video/TrackerData;->time:I

    goto/16 :goto_0

    .line 507
    .end local v8           #type:Ljava/lang/String;
    .end local v10           #video:Lcom/adsdk/sdk/video/VideoData;
    :cond_57
    const-string v11, "htmloverlay"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 508
    iget-boolean v11, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideVideo:Z

    if-eqz v11, :cond_0

    .line 509
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    if-eqz v11, :cond_58

    .line 510
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    invoke-virtual {v11}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v11

    if-nez v11, :cond_59

    .line 511
    :cond_58
    new-instance v11, Lorg/xml/sax/SAXException;

    .line 512
    const-string v12, "htmloverlay tag found inside wrong video node"

    .line 511
    invoke-direct {v11, v12}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 514
    :cond_59
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v11

    invoke-virtual {v11}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v10

    .line 515
    .restart local v10       #video:Lcom/adsdk/sdk/video/VideoData;
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideMarkup:Z

    .line 516
    const-string v11, "type"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 517
    .restart local v8       #type:Ljava/lang/String;
    const-string v11, "url"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5c

    .line 518
    const/4 v11, 0x0

    iput v11, v10, Lcom/adsdk/sdk/video/VideoData;->htmlOverlayType:I

    .line 519
    const-string v11, "url"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 520
    .restart local v9       #url:Ljava/lang/String;
    if-eqz v9, :cond_5a

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_5b

    .line 521
    :cond_5a
    new-instance v11, Lorg/xml/sax/SAXException;

    .line 522
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Empty url for overlay type "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 521
    invoke-direct {v11, v12}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 524
    :cond_5b
    iput-object v9, v10, Lcom/adsdk/sdk/video/VideoData;->htmlOverlayUrl:Ljava/lang/String;

    .line 540
    .end local v9           #url:Ljava/lang/String;
    :goto_9
    const-string v11, "showafter"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 539
    invoke-direct {p0, v11}, Lcom/adsdk/sdk/video/ResponseHandler;->getInteger(Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lcom/adsdk/sdk/video/VideoData;->showHtmlOverlayAfter:I

    .line 542
    const-string v11, "show"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 541
    invoke-direct {p0, v11}, Lcom/adsdk/sdk/video/ResponseHandler;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v10, Lcom/adsdk/sdk/video/VideoData;->showHtmlOverlay:Z

    goto/16 :goto_0

    .line 525
    :cond_5c
    const-string v11, "markup"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5d

    .line 526
    const/4 v11, 0x1

    iput v11, v10, Lcom/adsdk/sdk/video/VideoData;->htmlOverlayType:I

    .line 527
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideMarkup:Z

    goto :goto_9

    .line 529
    :cond_5d
    const/4 v11, 0x0

    iput v11, v10, Lcom/adsdk/sdk/video/VideoData;->htmlOverlayType:I

    .line 530
    const-string v11, "url"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 531
    .restart local v9       #url:Ljava/lang/String;
    if-eqz v9, :cond_5e

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_5f

    .line 532
    :cond_5e
    new-instance v11, Lorg/xml/sax/SAXException;

    .line 533
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Empty url for overlay type "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 532
    invoke-direct {v11, v12}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 535
    :cond_5f
    iput-object v9, v10, Lcom/adsdk/sdk/video/VideoData;->htmlOverlayUrl:Ljava/lang/String;

    goto :goto_9
.end method
