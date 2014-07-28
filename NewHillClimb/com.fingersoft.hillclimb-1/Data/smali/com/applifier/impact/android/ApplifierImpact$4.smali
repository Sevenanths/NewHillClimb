.class Lcom/applifier/impact/android/ApplifierImpact$4;
.super Ljava/util/TimerTask;
.source "ApplifierImpact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applifier/impact/android/ApplifierImpact;->playVideo(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applifier/impact/android/ApplifierImpact;


# direct methods
.method constructor <init>(Lcom/applifier/impact/android/ApplifierImpact;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/applifier/impact/android/ApplifierImpact$4;->this$0:Lcom/applifier/impact/android/ApplifierImpact;

    .line 745
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 748
    const-string v1, "Delayed video start"

    invoke-static {v1, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 749
    new-instance v0, Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactPlayVideoRunner;

    iget-object v1, p0, Lcom/applifier/impact/android/ApplifierImpact$4;->this$0:Lcom/applifier/impact/android/ApplifierImpact;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactPlayVideoRunner;-><init>(Lcom/applifier/impact/android/ApplifierImpact;Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactPlayVideoRunner;)V

    .line 750
    .local v0, playVideoRunner:Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactPlayVideoRunner;
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 751
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 752
    :cond_0
    return-void
.end method
