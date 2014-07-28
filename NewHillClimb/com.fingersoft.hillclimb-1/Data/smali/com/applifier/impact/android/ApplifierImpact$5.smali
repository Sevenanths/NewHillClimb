.class Lcom/applifier/impact/android/ApplifierImpact$5;
.super Ljava/util/TimerTask;
.source "ApplifierImpact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applifier/impact/android/ApplifierImpact;->createPauseScreenTimer()V
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
    iput-object p1, p0, Lcom/applifier/impact/android/ApplifierImpact$5;->this$0:Lcom/applifier/impact/android/ApplifierImpact;

    .line 799
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 802
    sget-object v1, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 803
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 804
    .local v0, pm:Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 805
    sget-object v1, Lcom/applifier/impact/android/ApplifierImpact;->mainview:Lcom/applifier/impact/android/view/ApplifierImpactMainView;

    iget-object v1, v1, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->webview:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    const-string v2, "hideSpinner"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;->sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 806
    iget-object v1, p0, Lcom/applifier/impact/android/ApplifierImpact$5;->this$0:Lcom/applifier/impact/android/ApplifierImpact;

    #calls: Lcom/applifier/impact/android/ApplifierImpact;->close()V
    invoke-static {v1}, Lcom/applifier/impact/android/ApplifierImpact;->access$8(Lcom/applifier/impact/android/ApplifierImpact;)V

    .line 807
    iget-object v1, p0, Lcom/applifier/impact/android/ApplifierImpact$5;->this$0:Lcom/applifier/impact/android/ApplifierImpact;

    #calls: Lcom/applifier/impact/android/ApplifierImpact;->cancelPauseScreenTimer()V
    invoke-static {v1}, Lcom/applifier/impact/android/ApplifierImpact;->access$9(Lcom/applifier/impact/android/ApplifierImpact;)V

    .line 810
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    return-void
.end method
