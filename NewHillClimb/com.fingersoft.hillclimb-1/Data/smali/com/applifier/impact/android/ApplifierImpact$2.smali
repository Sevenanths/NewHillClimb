.class Lcom/applifier/impact/android/ApplifierImpact$2;
.super Ljava/lang/Object;
.source "ApplifierImpact.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applifier/impact/android/ApplifierImpact;->init(Landroid/app/Activity;Ljava/lang/String;Lcom/applifier/impact/android/IApplifierImpactListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applifier/impact/android/ApplifierImpact;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/applifier/impact/android/ApplifierImpact;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/applifier/impact/android/ApplifierImpact$2;->this$0:Lcom/applifier/impact/android/ApplifierImpact;

    iput-object p2, p0, Lcom/applifier/impact/android/ApplifierImpact$2;->val$activity:Landroid/app/Activity;

    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 652
    iget-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact$2;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->fetchAdvertisingTrackingInfo(Landroid/app/Activity;)V

    .line 653
    sget-object v0, Lcom/applifier/impact/android/ApplifierImpact;->webdata:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;

    invoke-virtual {v0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->initCampaigns()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact$2;->this$0:Lcom/applifier/impact/android/ApplifierImpact;

    const/4 v1, 0x1

    #setter for: Lcom/applifier/impact/android/ApplifierImpact;->_initialized:Z
    invoke-static {v0, v1}, Lcom/applifier/impact/android/ApplifierImpact;->access$6(Lcom/applifier/impact/android/ApplifierImpact;Z)V

    .line 656
    :cond_0
    return-void
.end method
