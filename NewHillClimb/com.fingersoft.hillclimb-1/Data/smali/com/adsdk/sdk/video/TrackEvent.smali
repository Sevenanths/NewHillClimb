.class public Lcom/adsdk/sdk/video/TrackEvent;
.super Ljava/lang/Object;
.source "TrackEvent.java"


# instance fields
.field public retries:I

.field public timestamp:J

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/adsdk/sdk/video/TrackEvent;->retries:I

    .line 3
    return-void
.end method
