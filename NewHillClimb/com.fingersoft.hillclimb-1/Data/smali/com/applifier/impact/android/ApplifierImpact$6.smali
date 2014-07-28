.class Lcom/applifier/impact/android/ApplifierImpact$6;
.super Ljava/util/TimerTask;
.source "ApplifierImpact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applifier/impact/android/ApplifierImpact;->setupCampaignRefreshTimer()V
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
    iput-object p1, p0, Lcom/applifier/impact/android/ApplifierImpact$6;->this$0:Lcom/applifier/impact/android/ApplifierImpact;

    .line 855
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 858
    iget-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact$6;->this$0:Lcom/applifier/impact/android/ApplifierImpact;

    #getter for: Lcom/applifier/impact/android/ApplifierImpact;->_showingImpact:Z
    invoke-static {v0}, Lcom/applifier/impact/android/ApplifierImpact;->access$10(Lcom/applifier/impact/android/ApplifierImpact;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 859
    const-string v0, "Refreshing ad plan to get new data"

    invoke-static {v0, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 860
    sget-object v0, Lcom/applifier/impact/android/ApplifierImpact;->webdata:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;

    invoke-virtual {v0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->initCampaigns()Z

    .line 865
    :goto_0
    return-void

    .line 862
    :cond_0
    const-string v0, "Refreshing ad plan after current ad"

    invoke-static {v0, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 863
    iget-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact$6;->this$0:Lcom/applifier/impact/android/ApplifierImpact;

    const/4 v1, 0x1

    #setter for: Lcom/applifier/impact/android/ApplifierImpact;->_refreshAfterShowImpact:Z
    invoke-static {v0, v1}, Lcom/applifier/impact/android/ApplifierImpact;->access$11(Lcom/applifier/impact/android/ApplifierImpact;Z)V

    goto :goto_0
.end method
