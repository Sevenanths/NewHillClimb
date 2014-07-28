.class Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1$1;
.super Ljava/lang/Object;
.source "ApplifierImpact.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;


# direct methods
.method constructor <init>(Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1$1;->this$2:Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;

    .line 914
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 917
    sget-object v1, Lcom/applifier/impact/android/ApplifierImpact;->mainview:Lcom/applifier/impact/android/view/ApplifierImpactMainView;

    if-eqz v1, :cond_0

    .line 918
    sget-object v1, Lcom/applifier/impact/android/ApplifierImpact;->mainview:Lcom/applifier/impact/android/view/ApplifierImpactMainView;

    iget-object v2, p0, Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1$1;->this$2:Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;

    #getter for: Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;->this$1:Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;
    invoke-static {v2}, Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;->access$0(Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;)Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;

    move-result-object v2

    iget-object v2, v2, Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;->_data:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->closeImpact(Lorg/json/JSONObject;)V

    .line 920
    :cond_0
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 921
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 924
    :cond_1
    invoke-static {}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->getZoneManager()Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;->getCurrentZone()Lcom/applifier/impact/android/zone/ApplifierImpactZone;

    move-result-object v0

    .line 925
    .local v0, currentZone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    invoke-virtual {v0}, Lcom/applifier/impact/android/zone/ApplifierImpactZone;->openAnimated()Z

    move-result v1

    if-nez v1, :cond_2

    .line 926
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 929
    :cond_2
    iget-object v1, p0, Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1$1;->this$2:Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;

    #getter for: Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;->this$1:Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;
    invoke-static {v1}, Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;->access$0(Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;)Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;

    move-result-object v1

    #getter for: Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;->this$0:Lcom/applifier/impact/android/ApplifierImpact;
    invoke-static {v1}, Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;->access$1(Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;)Lcom/applifier/impact/android/ApplifierImpact;

    move-result-object v1

    #setter for: Lcom/applifier/impact/android/ApplifierImpact;->_showingImpact:Z
    invoke-static {v1, v3}, Lcom/applifier/impact/android/ApplifierImpact;->access$0(Lcom/applifier/impact/android/ApplifierImpact;Z)V

    .line 931
    iget-object v1, p0, Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1$1;->this$2:Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;

    #getter for: Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;->this$1:Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;
    invoke-static {v1}, Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;->access$0(Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;)Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;

    move-result-object v1

    #getter for: Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;->this$0:Lcom/applifier/impact/android/ApplifierImpact;
    invoke-static {v1}, Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;->access$1(Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;)Lcom/applifier/impact/android/ApplifierImpact;

    move-result-object v1

    #getter for: Lcom/applifier/impact/android/ApplifierImpact;->_impactListener:Lcom/applifier/impact/android/IApplifierImpactListener;
    invoke-static {v1}, Lcom/applifier/impact/android/ApplifierImpact;->access$1(Lcom/applifier/impact/android/ApplifierImpact;)Lcom/applifier/impact/android/IApplifierImpactListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 932
    iget-object v1, p0, Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1$1;->this$2:Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;

    #getter for: Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;->this$1:Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;
    invoke-static {v1}, Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;->access$0(Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;)Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;

    move-result-object v1

    #getter for: Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;->this$0:Lcom/applifier/impact/android/ApplifierImpact;
    invoke-static {v1}, Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;->access$1(Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;)Lcom/applifier/impact/android/ApplifierImpact;

    move-result-object v1

    #getter for: Lcom/applifier/impact/android/ApplifierImpact;->_impactListener:Lcom/applifier/impact/android/IApplifierImpactListener;
    invoke-static {v1}, Lcom/applifier/impact/android/ApplifierImpact;->access$1(Lcom/applifier/impact/android/ApplifierImpact;)Lcom/applifier/impact/android/IApplifierImpactListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/applifier/impact/android/IApplifierImpactListener;->onImpactClose()V

    .line 934
    :cond_3
    iget-object v1, p0, Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1$1;->this$2:Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;

    #getter for: Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;->this$1:Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;
    invoke-static {v1}, Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;->access$0(Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;)Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;

    move-result-object v1

    #getter for: Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;->this$0:Lcom/applifier/impact/android/ApplifierImpact;
    invoke-static {v1}, Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;->access$1(Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;)Lcom/applifier/impact/android/ApplifierImpact;

    move-result-object v1

    #calls: Lcom/applifier/impact/android/ApplifierImpact;->refreshCampaigns()V
    invoke-static {v1}, Lcom/applifier/impact/android/ApplifierImpact;->access$2(Lcom/applifier/impact/android/ApplifierImpact;)V

    .line 935
    return-void
.end method
