.class public Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob$AdListener;
.super Lcom/google/android/gms/ads/AdListener;
.source "AdProviderAdmob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AdListener"
.end annotation


# instance fields
.field private adManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

.field final synthetic this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;


# direct methods
.method public constructor <init>(Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;Lcom/fingersoft/fsadsdk/advertising/AdManager;)V
    .locals 0
    .parameter
    .parameter "adManager"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob$AdListener;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;

    .line 74
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    .line 76
    iput-object p2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob$AdListener;->adManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    .line 77
    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(I)V
    .locals 2
    .parameter "errorCode"

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "admob Ad failed to load with error code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob$AdListener;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;->mAdFailCalled:Z
    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;->access$0(Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob$AdListener;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;

    iget-object v0, v0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->onAdViewFailed()V

    .line 85
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob$AdListener;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;

    const/4 v1, 0x1

    #setter for: Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;->mAdFailCalled:Z
    invoke-static {v0, v1}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;->access$1(Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;Z)V

    .line 87
    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob$AdListener;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;->mAdView:Lcom/google/android/gms/ads/AdView;
    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;->access$2(Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;)Lcom/google/android/gms/ads/AdView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    .line 93
    const-string v0, "admob - Received ad"

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob$AdListener;->adManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    const-string v1, "adreceived/admob"

    invoke-virtual {v0, v1}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->trackPageView(Ljava/lang/String;)V

    .line 95
    return-void
.end method
