.class Lcom/fingersoft/game/CrossPromotionDialog$AppInfo$3;
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
    .line 177
    iput-object p1, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo$3;->this$1:Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 182
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apprelease/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo$3;->this$1:Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;

    iget-object v3, v3, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->mPackageId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/never"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fingersoft/game/MainActivity;->trackPageView(Ljava/lang/String;)V

    .line 184
    iget-object v2, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo$3;->this$1:Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;

    iget-object v2, v2, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/game/CrossPromotionDialog;

    iget-object v2, v2, Lcom/fingersoft/game/CrossPromotionDialog;->mIgnoreList:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo$3;->this$1:Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;

    iget-object v3, v3, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/game/CrossPromotionDialog;

    iget-object v4, v3, Lcom/fingersoft/game/CrossPromotionDialog;->mIgnoreList:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo$3;->this$1:Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;

    iget-object v4, v4, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->mPackageId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/fingersoft/game/CrossPromotionDialog;->mIgnoreList:Ljava/lang/String;

    .line 186
    :goto_0
    iget-object v2, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo$3;->this$1:Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;

    iget-object v2, v2, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/game/CrossPromotionDialog;

    iget-object v2, v2, Lcom/fingersoft/game/CrossPromotionDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v2}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "ignored_appreleases"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 187
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "ignore"

    iget-object v3, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo$3;->this$1:Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;

    iget-object v3, v3, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/game/CrossPromotionDialog;

    iget-object v3, v3, Lcom/fingersoft/game/CrossPromotionDialog;->mIgnoreList:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 188
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v1           #edit:Landroid/content/SharedPreferences$Editor;
    :goto_1
    iget-object v2, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo$3;->this$1:Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;

    iget-object v2, v2, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/game/CrossPromotionDialog;

    iget-object v2, v2, Lcom/fingersoft/game/CrossPromotionDialog;->mAppDlg:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 192
    return-void

    .line 185
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo$3;->this$1:Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;

    iget-object v3, v3, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/game/CrossPromotionDialog;

    iget-object v4, v3, Lcom/fingersoft/game/CrossPromotionDialog;->mIgnoreList:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo$3;->this$1:Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;

    iget-object v4, v4, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->mPackageId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/fingersoft/game/CrossPromotionDialog;->mIgnoreList:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
