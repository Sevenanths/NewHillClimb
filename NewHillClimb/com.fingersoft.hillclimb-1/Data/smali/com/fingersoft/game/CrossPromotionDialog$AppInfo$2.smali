.class Lcom/fingersoft/game/CrossPromotionDialog$AppInfo$2;
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
    .line 169
    iput-object p1, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo$2;->this$1:Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apprelease/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo$2;->this$1:Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;

    iget-object v1, v1, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->mPackageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/no"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fingersoft/game/MainActivity;->trackPageView(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo$2;->this$1:Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;

    iget-object v0, v0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/game/CrossPromotionDialog;

    iget-object v0, v0, Lcom/fingersoft/game/CrossPromotionDialog;->mAppDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 174
    return-void
.end method
