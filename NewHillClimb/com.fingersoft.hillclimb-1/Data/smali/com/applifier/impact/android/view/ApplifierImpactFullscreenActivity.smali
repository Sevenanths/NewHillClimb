.class public Lcom/applifier/impact/android/view/ApplifierImpactFullscreenActivity;
.super Landroid/app/Activity;
.source "ApplifierImpactFullscreenActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const-string v0, "ApplifierImpactFullscreenActivity->onCreate()"

    invoke-static {v0, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    sget-object v0, Lcom/applifier/impact/android/ApplifierImpact;->instance:Lcom/applifier/impact/android/ApplifierImpact;

    if-eqz v0, :cond_0

    .line 17
    sget-object v0, Lcom/applifier/impact/android/ApplifierImpact;->instance:Lcom/applifier/impact/android/ApplifierImpact;

    invoke-virtual {v0, p0}, Lcom/applifier/impact/android/ApplifierImpact;->changeActivity(Landroid/app/Activity;)V

    .line 20
    :goto_0
    return-void

    .line 19
    :cond_0
    const-string v0, "onCreate() Impact instance is NULL!"

    invoke-static {v0, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 36
    const-string v0, "ApplifierImpactFullscreenActivity->onDestroy()"

    invoke-static {v0, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 25
    const-string v0, "ApplifierImpactFullscreenActivity->onResume()"

    invoke-static {v0, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    sget-object v0, Lcom/applifier/impact/android/ApplifierImpact;->instance:Lcom/applifier/impact/android/ApplifierImpact;

    if-eqz v0, :cond_0

    .line 28
    sget-object v0, Lcom/applifier/impact/android/ApplifierImpact;->instance:Lcom/applifier/impact/android/ApplifierImpact;

    invoke-virtual {v0, p0}, Lcom/applifier/impact/android/ApplifierImpact;->changeActivity(Landroid/app/Activity;)V

    .line 31
    :goto_0
    return-void

    .line 30
    :cond_0
    const-string v0, "onResume() Impact instance is NULL!"

    invoke-static {v0, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
