.class Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$1;
.super Landroid/os/CountDownTimer;
.source "AdProviderFs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->startCountdown(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;


# direct methods
.method constructor <init>(Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;JJ)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$1;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;

    .line 367
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 376
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$1;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->timeLeft:J

    .line 377
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$1;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;

    iget v1, v0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->campaignIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->campaignIndex:I

    .line 378
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$1;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;

    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->showAd()V

    .line 379
    return-void
.end method

.method public onTick(J)V
    .locals 1
    .parameter "millisUntilFinished"

    .prologue
    .line 371
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$1;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;

    iput-wide p1, v0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->timeLeft:J

    .line 372
    return-void
.end method
