.class Lcom/fingersoft/game/CrossPromotionDialog$AppInfo$1;
.super Ljava/lang/Object;
.source "CrossPromotionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->show()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;


# direct methods
.method constructor <init>(Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo$1;->this$1:Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 155
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apprelease/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo$1;->this$1:Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;

    iget-object v3, v3, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->mPackageId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/yes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fingersoft/game/MainActivity;->trackPageView(Ljava/lang/String;)V

    .line 156
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "market://details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo$1;->this$1:Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;

    iget-object v4, v4, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->mPackageId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 157
    .local v1, myIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo$1;->this$1:Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;

    iget-object v2, v2, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/game/CrossPromotionDialog;

    iget-object v2, v2, Lcom/fingersoft/game/CrossPromotionDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v2}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v1           #myIntent:Landroid/content/Intent;
    :goto_0
    iget-object v2, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo$1;->this$1:Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;

    iget-object v2, v2, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/game/CrossPromotionDialog;

    iget-object v2, v2, Lcom/fingersoft/game/CrossPromotionDialog;->mAppDlg:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 166
    return-void

    .line 164
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
