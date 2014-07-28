.class Lcom/applifier/impact/android/ApplifierImpact$3;
.super Ljava/lang/Object;
.source "ApplifierImpact.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applifier/impact/android/ApplifierImpact;->sendImpactReadyEvent()V
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
    iput-object p1, p0, Lcom/applifier/impact/android/ApplifierImpact$3;->this$0:Lcom/applifier/impact/android/ApplifierImpact;

    .line 721
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 724
    const-string v0, "Impact ready!"

    invoke-static {v0, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 725
    iget-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact$3;->this$0:Lcom/applifier/impact/android/ApplifierImpact;

    const/4 v1, 0x1

    #setter for: Lcom/applifier/impact/android/ApplifierImpact;->_impactReadySent:Z
    invoke-static {v0, v1}, Lcom/applifier/impact/android/ApplifierImpact;->access$7(Lcom/applifier/impact/android/ApplifierImpact;Z)V

    .line 726
    iget-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact$3;->this$0:Lcom/applifier/impact/android/ApplifierImpact;

    #getter for: Lcom/applifier/impact/android/ApplifierImpact;->_impactListener:Lcom/applifier/impact/android/IApplifierImpactListener;
    invoke-static {v0}, Lcom/applifier/impact/android/ApplifierImpact;->access$1(Lcom/applifier/impact/android/ApplifierImpact;)Lcom/applifier/impact/android/IApplifierImpactListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/applifier/impact/android/IApplifierImpactListener;->onCampaignsAvailable()V

    .line 727
    return-void
.end method
