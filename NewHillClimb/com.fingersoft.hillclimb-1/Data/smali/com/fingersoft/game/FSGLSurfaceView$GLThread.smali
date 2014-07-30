.class Lcom/fingersoft/game/FSGLSurfaceView$GLThread;
.super Ljava/lang/Thread;
.source "FSGLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingersoft/game/FSGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GLThread"
.end annotation


# instance fields
.field private mEglHelper:Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/fingersoft/game/FSGLSurfaceView;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mSizeChanged:Z

.field private mSurfaceIsBad:Z

.field private mWaitingForSurface:Z

.field private mWidth:I


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/fingersoft/game/FSGLSurfaceView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, glSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/fingersoft/game/FSGLSurfaceView;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1229
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1760
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 1761
    iput-boolean v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mSizeChanged:Z

    .line 1230
    iput v2, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mWidth:I

    .line 1231
    iput v2, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mHeight:I

    .line 1232
    iput-boolean v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mRequestRender:Z

    .line 1233
    iput v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mRenderMode:I

    .line 1234
    iput-object p1, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 1235
    return-void
.end method

.method static synthetic access$1102(Lcom/fingersoft/game/FSGLSurfaceView$GLThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1227
    iput-boolean p1, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mExited:Z

    return p1
.end method

.method private guardedRun()V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1276
    new-instance v19, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mEglHelper:Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;

    .line 1277
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1278
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1280
    const/4 v9, 0x0

    .line 1281
    .local v9, gl:Ljavax/microedition/khronos/opengles/GL10;
    const/4 v3, 0x0

    .line 1282
    .local v3, createEglContext:Z
    const/4 v4, 0x0

    .line 1283
    .local v4, createEglSurface:Z
    const/4 v5, 0x0

    .line 1284
    .local v5, createGlInterface:Z
    const/4 v11, 0x0

    .line 1285
    .local v11, lostEglContext:Z
    const/4 v13, 0x0

    .line 1286
    .local v13, sizeChanged:Z
    const/16 v18, 0x0

    .line 1287
    .local v18, wantRenderNotification:Z
    const/4 v6, 0x0

    .line 1288
    .local v6, doRenderNotification:Z
    const/4 v2, 0x0

    .line 1289
    .local v2, askedToReleaseEglContext:Z
    const/16 v17, 0x0

    .line 1290
    .local v17, w:I
    const/4 v10, 0x0

    .line 1291
    .local v10, h:I
    const/4 v8, 0x0

    .line 1294
    .local v8, event:Ljava/lang/Runnable;
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/fingersoft/game/FSGLSurfaceView;->access$800()Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    move-result-object v20

    monitor-enter v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1296
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mShouldExit:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 1297
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1568
    invoke-static {}, Lcom/fingersoft/game/FSGLSurfaceView;->access$800()Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    move-result-object v20

    monitor-enter v20

    .line 1569
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1570
    invoke-direct/range {p0 .. p0}, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1571
    monitor-exit v20

    return-void

    :catchall_0
    move-exception v19

    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v19

    .line 1300
    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_2

    .line 1301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Ljava/lang/Runnable;

    move-object v8, v0

    .line 1455
    :goto_2
    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1457
    if-eqz v8, :cond_13

    .line 1458
    :try_start_4
    invoke-interface {v8}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1459
    const/4 v8, 0x0

    .line 1460
    goto :goto_0

    .line 1306
    :cond_2
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mPaused:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mRequestPaused:Z

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    .line 1307
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mRequestPaused:Z

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mPaused:Z

    .line 1308
    invoke-static {}, Lcom/fingersoft/game/FSGLSurfaceView;->access$800()Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 1315
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 1319
    invoke-direct/range {p0 .. p0}, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1320
    invoke-direct/range {p0 .. p0}, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1321
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    .line 1322
    const/4 v2, 0x1

    .line 1326
    :cond_4
    if-eqz v11, :cond_5

    .line 1327
    invoke-direct/range {p0 .. p0}, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1328
    invoke-direct/range {p0 .. p0}, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1329
    const/4 v11, 0x0

    .line 1330
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 1334
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mHaveEglSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mPaused:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 1338
    invoke-direct/range {p0 .. p0}, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/fingersoft/game/FSGLSurfaceView;

    .line 1340
    .local v16, view:Lcom/fingersoft/game/FSGLSurfaceView;
    if-nez v16, :cond_10

    const/4 v12, 0x0

    .line 1342
    .local v12, preserveEglContextOnPause:Z
    :goto_3
    if-eqz v12, :cond_6

    invoke-static {}, Lcom/fingersoft/game/FSGLSurfaceView;->access$800()Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;->shouldReleaseEGLContextWhenPausing()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 1343
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1348
    :cond_7
    invoke-static {}, Lcom/fingersoft/game/FSGLSurfaceView;->access$800()Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;->shouldTerminateEGLWhenPausing()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mEglHelper:Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->finish()V

    .line 1357
    .end local v12           #preserveEglContextOnPause:Z
    .end local v16           #view:Lcom/fingersoft/game/FSGLSurfaceView;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mHasSurface:Z

    move/from16 v19, v0

    if-nez v19, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mWaitingForSurface:Z

    move/from16 v19, v0

    if-nez v19, :cond_a

    .line 1361
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mHaveEglSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 1362
    invoke-direct/range {p0 .. p0}, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1364
    :cond_9
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1365
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 1366
    invoke-static {}, Lcom/fingersoft/game/FSGLSurfaceView;->access$800()Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 1370
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mHasSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mWaitingForSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    .line 1374
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1375
    invoke-static {}, Lcom/fingersoft/game/FSGLSurfaceView;->access$800()Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 1378
    :cond_b
    if-eqz v6, :cond_c

    .line 1382
    const/16 v18, 0x0

    .line 1383
    const/4 v6, 0x0

    .line 1384
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1385
    invoke-static {}, Lcom/fingersoft/game/FSGLSurfaceView;->access$800()Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 1389
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->readyToDraw()Z

    move-result v19

    if-eqz v19, :cond_12

    .line 1392
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mHaveEglContext:Z

    move/from16 v19, v0

    if-nez v19, :cond_d

    .line 1393
    if-eqz v2, :cond_11

    .line 1394
    const/4 v2, 0x0

    .line 1409
    :cond_d
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mHaveEglContext:Z

    move/from16 v19, v0

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mHaveEglSurface:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    .line 1410
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1411
    const/4 v4, 0x1

    .line 1412
    const/4 v5, 0x1

    .line 1413
    const/4 v13, 0x1

    .line 1416
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mHaveEglSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_12

    .line 1417
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mSizeChanged:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f

    .line 1418
    const/4 v13, 0x1

    .line 1419
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mWidth:I

    move/from16 v17, v0

    .line 1420
    move-object/from16 v0, p0

    iget v10, v0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mHeight:I

    .line 1421
    const/16 v18, 0x1

    .line 1429
    const/4 v4, 0x1

    .line 1431
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mSizeChanged:Z

    .line 1433
    :cond_f
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mRequestRender:Z

    .line 1434
    invoke-static {}, Lcom/fingersoft/game/FSGLSurfaceView;->access$800()Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_2

    .line 1455
    :catchall_1
    move-exception v19

    monitor-exit v20
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v19
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1568
    :catchall_2
    move-exception v19

    invoke-static {}, Lcom/fingersoft/game/FSGLSurfaceView;->access$800()Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    move-result-object v20

    monitor-enter v20

    .line 1569
    :try_start_7
    invoke-direct/range {p0 .. p0}, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1570
    invoke-direct/range {p0 .. p0}, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1571
    monitor-exit v20
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v19

    .line 1340
    .restart local v16       #view:Lcom/fingersoft/game/FSGLSurfaceView;
    :cond_10
    :try_start_8
    #getter for: Lcom/fingersoft/game/FSGLSurfaceView;->mPreserveEGLContextOnPause:Z
    invoke-static/range {v16 .. v16}, Lcom/fingersoft/game/FSGLSurfaceView;->access$900(Lcom/fingersoft/game/FSGLSurfaceView;)Z

    move-result v12

    goto/16 :goto_3

    .line 1395
    .end local v16           #view:Lcom/fingersoft/game/FSGLSurfaceView;
    :cond_11
    invoke-static {}, Lcom/fingersoft/game/FSGLSurfaceView;->access$800()Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;->tryAcquireEglContextLocked(Lcom/fingersoft/game/FSGLSurfaceView$GLThread;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v19

    if-eqz v19, :cond_d

    .line 1397
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mEglHelper:Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->start()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    .line 1402
    const/16 v19, 0x1

    :try_start_a
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1403
    const/4 v3, 0x1

    .line 1405
    invoke-static {}, Lcom/fingersoft/game/FSGLSurfaceView;->access$800()Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_4

    .line 1398
    :catch_0
    move-exception v15

    .line 1399
    .local v15, t:Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/fingersoft/game/FSGLSurfaceView;->access$800()Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;->releaseEglContextLocked(Lcom/fingersoft/game/FSGLSurfaceView$GLThread;)V

    .line 1400
    throw v15

    .line 1453
    .end local v15           #t:Ljava/lang/RuntimeException;
    :cond_12
    invoke-static {}, Lcom/fingersoft/game/FSGLSurfaceView;->access$800()Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_1

    .line 1463
    :cond_13
    if-eqz v4, :cond_16

    .line 1470
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mEglHelper:Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->createSurface()Z

    move-result v19

    if-nez v19, :cond_14

    const/16 v19, 0x1

    :goto_5
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mSurfaceIsBad:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_1

    .line 1477
    :goto_6
    :try_start_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mSurfaceIsBad:Z

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_15

    .line 1479
    const/4 v11, 0x1

    .line 1480
    const-string v19, "GLThread"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "badsurface tid="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->getId()J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " mHaveEglContext: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mHaveEglContext:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " mHaveEglSurface: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mHaveEglSurface:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " mPaused: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mPaused:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " mHasSurface: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mHasSurface:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " mSurfaceIsBad: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mSurfaceIsBad:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " mWaitingForSurface: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mWaitingForSurface:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " mWidth: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mWidth:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " mHeight: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mHeight:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " mRequestRender: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mRequestRender:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " mRenderMode: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mRenderMode:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1470
    :cond_14
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 1472
    :catch_1
    move-exception v7

    .line 1474
    .local v7, e:Ljava/lang/IllegalArgumentException;
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mSurfaceIsBad:Z

    goto/16 :goto_6

    .line 1495
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    :cond_15
    const/4 v4, 0x0

    .line 1498
    :cond_16
    if-eqz v5, :cond_17

    .line 1499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mEglHelper:Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v9, v0

    .line 1501
    invoke-static {}, Lcom/fingersoft/game/FSGLSurfaceView;->access$800()Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1502
    const/4 v5, 0x0

    .line 1505
    :cond_17
    if-eqz v3, :cond_19

    .line 1509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/fingersoft/game/FSGLSurfaceView;

    .line 1510
    .restart local v16       #view:Lcom/fingersoft/game/FSGLSurfaceView;
    if-eqz v16, :cond_18

    .line 1511
    #getter for: Lcom/fingersoft/game/FSGLSurfaceView;->mRenderer:Lcom/fingersoft/game/FSGLSurfaceView$Renderer;
    invoke-static/range {v16 .. v16}, Lcom/fingersoft/game/FSGLSurfaceView;->access$1000(Lcom/fingersoft/game/FSGLSurfaceView;)Lcom/fingersoft/game/FSGLSurfaceView$Renderer;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mEglHelper:Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v9, v1}, Lcom/fingersoft/game/FSGLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 1513
    :cond_18
    const/4 v3, 0x0

    .line 1516
    .end local v16           #view:Lcom/fingersoft/game/FSGLSurfaceView;
    :cond_19
    if-eqz v13, :cond_1b

    .line 1520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/fingersoft/game/FSGLSurfaceView;

    .line 1521
    .restart local v16       #view:Lcom/fingersoft/game/FSGLSurfaceView;
    if-eqz v16, :cond_1a

    .line 1522
    #getter for: Lcom/fingersoft/game/FSGLSurfaceView;->mRenderer:Lcom/fingersoft/game/FSGLSurfaceView$Renderer;
    invoke-static/range {v16 .. v16}, Lcom/fingersoft/game/FSGLSurfaceView;->access$1000(Lcom/fingersoft/game/FSGLSurfaceView;)Lcom/fingersoft/game/FSGLSurfaceView$Renderer;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v0, v9, v1, v10}, Lcom/fingersoft/game/FSGLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 1524
    :cond_1a
    const/4 v13, 0x0

    .line 1531
    .end local v16           #view:Lcom/fingersoft/game/FSGLSurfaceView;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/fingersoft/game/FSGLSurfaceView;

    .line 1532
    .restart local v16       #view:Lcom/fingersoft/game/FSGLSurfaceView;
    if-eqz v16, :cond_1c

    .line 1533
    #getter for: Lcom/fingersoft/game/FSGLSurfaceView;->mRenderer:Lcom/fingersoft/game/FSGLSurfaceView$Renderer;
    invoke-static/range {v16 .. v16}, Lcom/fingersoft/game/FSGLSurfaceView;->access$1000(Lcom/fingersoft/game/FSGLSurfaceView;)Lcom/fingersoft/game/FSGLSurfaceView$Renderer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Lcom/fingersoft/game/FSGLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1536
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mEglHelper:Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->swap()I

    move-result v14

    .line 1537
    .local v14, swapError:I
    sparse-switch v14, :sswitch_data_0

    .line 1551
    const-string v19, "GLThread"

    const-string v20, "eglSwapBuffers"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v14}, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1552
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mSurfaceIsBad:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto/16 :goto_0

    .line 1544
    :sswitch_0
    const/4 v11, 0x1

    .line 1559
    :sswitch_1
    if-eqz v18, :cond_0

    .line 1560
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1571
    .end local v14           #swapError:I
    .end local v16           #view:Lcom/fingersoft/game/FSGLSurfaceView;
    :catchall_3
    move-exception v19

    :try_start_d
    monitor-exit v20
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v19

    .line 1537
    nop

    :sswitch_data_0
    .sparse-switch
        0x3000 -> :sswitch_1
        0x300e -> :sswitch_0
    .end sparse-switch
.end method

.method private readyToDraw()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1580
    iget-boolean v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mPaused:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mSurfaceIsBad:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mWidth:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mHeight:I

    if-lez v1, :cond_1

    iget-boolean v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mRequestRender:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mRenderMode:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stopEglContextLocked()V
    .locals 1

    .prologue
    .line 1269
    iget-boolean v0, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    .line 1270
    iget-object v0, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mEglHelper:Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;

    invoke-virtual {v0}, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->finish()V

    .line 1271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1272
    invoke-static {}, Lcom/fingersoft/game/FSGLSurfaceView;->access$800()Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;->releaseEglContextLocked(Lcom/fingersoft/game/FSGLSurfaceView$GLThread;)V

    .line 1274
    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    .prologue
    .line 1258
    iget-boolean v0, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    .line 1259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1260
    iget-object v0, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mEglHelper:Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;

    invoke-virtual {v0}, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->destroySurface()V

    .line 1262
    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    .prologue
    .line 1576
    iget-boolean v0, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRenderMode()I
    .locals 2

    .prologue
    .line 1596
    invoke-static {}, Lcom/fingersoft/game/FSGLSurfaceView;->access$800()Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1597
    :try_start_0
    iget v0, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mRenderMode:I

    monitor-exit v1

    return v0

    .line 1598
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 1643
    invoke-static {}, Lcom/fingersoft/game/FSGLSurfaceView;->access$800()Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1647
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mRequestPaused:Z

    .line 1648
    invoke-static {}, Lcom/fingersoft/game/FSGLSurfaceView;->access$800()Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1649
    :goto_0
    iget-boolean v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1654
    :try_start_1
    invoke-static {}, Lcom/fingersoft/game/FSGLSurfaceView;->access$800()Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1655
    :catch_0
    move-exception v0

    .line 1656
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1659
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1660
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 1663
    invoke-static {}, Lcom/fingersoft/game/FSGLSurfaceView;->access$800()Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1667
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mRequestPaused:Z

    .line 1668
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mRequestRender:Z

    .line 1669
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1670
    invoke-static {}, Lcom/fingersoft/game/FSGLSurfaceView;->access$800()Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1671
    :goto_0
    iget-boolean v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mPaused:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mRenderComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1676
    :try_start_1
    invoke-static {}, Lcom/fingersoft/game/FSGLSurfaceView;->access$800()Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1677
    :catch_0
    move-exception v0

    .line 1678
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1681
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1682
    return-void
.end method

.method public onWindowResize(II)V
    .locals 3
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1685
    invoke-static {}, Lcom/fingersoft/game/FSGLSurfaceView;->access$800()Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1686
    :try_start_0
    iput p1, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mWidth:I

    .line 1687
    iput p2, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mHeight:I

    .line 1688
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mSizeChanged:Z

    .line 1689
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mRequestRender:Z

    .line 1690
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1691
    invoke-static {}, Lcom/fingersoft/game/FSGLSurfaceView;->access$800()Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1695
    :goto_0
    iget-boolean v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mPaused:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mRenderComplete:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->ableToDraw()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 1700
    :try_start_1
    invoke-static {}, Lcom/fingersoft/game/FSGLSurfaceView;->access$800()Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1701
    :catch_0
    move-exception v0

    .line 1702
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1705
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1706
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 1734
    if-nez p1, :cond_0

    .line 1735
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1737
    :cond_0
    invoke-static {}, Lcom/fingersoft/game/FSGLSurfaceView;->access$800()Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1738
    :try_start_0
    iget-object v0, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1739
    invoke-static {}, Lcom/fingersoft/game/FSGLSurfaceView;->access$800()Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1740
    monitor-exit v1

    .line 1741
    return-void

    .line 1740
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestExitAndWait()V
    .locals 3

    .prologue
    .line 1711
    invoke-static {}, Lcom/fingersoft/game/FSGLSurfaceView;->access$800()Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1712
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mShouldExit:Z

    .line 1713
    invoke-static {}, Lcom/fingersoft/game/FSGLSurfaceView;->access$800()Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1714
    :goto_0
    iget-boolean v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1716
    :try_start_1
    invoke-static {}, Lcom/fingersoft/game/FSGLSurfaceView;->access$800()Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1717
    :catch_0
    move-exception v0

    .line 1718
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1721
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1722
    return-void
.end method

.method public requestReleaseEglContextLocked()V
    .locals 1

    .prologue
    .line 1725
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    .line 1726
    invoke-static {}, Lcom/fingersoft/game/FSGLSurfaceView;->access$800()Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1727
    return-void
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 1602
    invoke-static {}, Lcom/fingersoft/game/FSGLSurfaceView;->access$800()Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1603
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mRequestRender:Z

    .line 1604
    invoke-static {}, Lcom/fingersoft/game/FSGLSurfaceView;->access$800()Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1605
    monitor-exit v1

    .line 1606
    return-void

    .line 1605
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 1239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->setName(Ljava/lang/String;)V

    .line 1245
    :try_start_0
    invoke-direct {p0}, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->guardedRun()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1249
    invoke-static {}, Lcom/fingersoft/game/FSGLSurfaceView;->access$800()Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;->threadExiting(Lcom/fingersoft/game/FSGLSurfaceView$GLThread;)V

    .line 1251
    :goto_0
    return-void

    .line 1246
    :catch_0
    move-exception v0

    .line 1249
    invoke-static {}, Lcom/fingersoft/game/FSGLSurfaceView;->access$800()Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;->threadExiting(Lcom/fingersoft/game/FSGLSurfaceView$GLThread;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/fingersoft/game/FSGLSurfaceView;->access$800()Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;->threadExiting(Lcom/fingersoft/game/FSGLSurfaceView$GLThread;)V

    throw v0
.end method

.method public setRenderMode(I)V
    .locals 2
    .parameter "renderMode"

    .prologue
    .line 1586
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 1587
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1589
    :cond_1
    invoke-static {}, Lcom/fingersoft/game/FSGLSurfaceView;->access$800()Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1590
    :try_start_0
    iput p1, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mRenderMode:I

    .line 1591
    invoke-static {}, Lcom/fingersoft/game/FSGLSurfaceView;->access$800()Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1592
    monitor-exit v1

    .line 1593
    return-void

    .line 1592
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceCreated()V
    .locals 3

    .prologue
    .line 1609
    invoke-static {}, Lcom/fingersoft/game/FSGLSurfaceView;->access$800()Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1613
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mHasSurface:Z

    .line 1614
    invoke-static {}, Lcom/fingersoft/game/FSGLSurfaceView;->access$800()Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1615
    :goto_0
    iget-boolean v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1617
    :try_start_1
    invoke-static {}, Lcom/fingersoft/game/FSGLSurfaceView;->access$800()Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1618
    :catch_0
    move-exception v0

    .line 1619
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1622
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1623
    return-void
.end method

.method public surfaceDestroyed()V
    .locals 3

    .prologue
    .line 1626
    invoke-static {}, Lcom/fingersoft/game/FSGLSurfaceView;->access$800()Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1630
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mHasSurface:Z

    .line 1631
    invoke-static {}, Lcom/fingersoft/game/FSGLSurfaceView;->access$800()Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1632
    :goto_0
    iget-boolean v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1634
    :try_start_1
    invoke-static {}, Lcom/fingersoft/game/FSGLSurfaceView;->access$800()Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1635
    :catch_0
    move-exception v0

    .line 1636
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1639
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1640
    return-void
.end method
