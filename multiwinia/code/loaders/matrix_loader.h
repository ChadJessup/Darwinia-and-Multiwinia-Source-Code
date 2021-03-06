
#ifndef _included_matrixloader_h
#define _included_matrixloader_h

#include "lib/universal_include.h"

#ifdef USE_LOADERS

#include "loaders/loader.h"

#define MATRIXLOADER_UPDATEPERIOD    0.02f


class MatrixLoader : public Loader
{
protected:
    void StartFrame();
    void EndFrame();
    
    float m_positions[40][30];
    static int s_highlights[];
    
public:
    MatrixLoader();

    void Run();
};

#endif // USE_LOADERS

#endif
