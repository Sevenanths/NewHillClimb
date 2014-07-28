.class Lcom/applifier/impact/android/ApplifierImpact$1;
.super Ljava/lang/Object;
.source "ApplifierImpact.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applifier/impact/android/ApplifierImpact;->onWebDataCompleted()V
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
    iput-object p1, p0, Lcom/applifier/impact/android/ApplifierImpact$1;->this$0:Lcom/applifier/impact/android/ApplifierImpact;

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 454
    iget-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact$1;->this$0:Lcom/applifier/impact/android/ApplifierImpact;

    #getter for: Lcom/applifier/impact/android/ApplifierImpact;->_alertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/applifier/impact/android/ApplifierImpact;->access$5(Lcom/applifier/impact/android/ApplifierImpact;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 455
    return-void
.end method
