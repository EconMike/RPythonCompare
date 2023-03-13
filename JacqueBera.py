# -*- coding: utf-8 -*-
"""
Created on Mon Dec  6 15:54:24 2021

@author: heyu1
"""

import numpy as np
from scipy import stats

def jarque_bera(resids, axis=0):
    r"""
    Calculates the Jarque-Bera test for normality

    Parameters
    -----------
    data : array-like
        Data to test for normality
    axis : int, optional
        Axis to use if data has more than 1 dimension. Default is 0

    Returns
    -------
    JB : float or array
        The Jarque-Bera test statistic
    JBpv : float or array
        The pvalue of the test statistic
    skew : float or array
        Estimated skewness of the data
    kurtosis : float or array
        Estimated kurtosis of the data

    Notes
    -----
    Each output returned has 1 dimension fewer than data


    The Jarque-Bera test statistic tests the null that the data is normally
    distributed against an alternative that the data follow some other
    distribution. The test statistic is based on two moments of the data,
    the skewness, and the kurtosis, and has an asymptotic :math:`\chi^2_2`
    distribution.

    The test statistic is defined

    .. math:: JB = n(S^2/6+(K-3)^2/24)

    where n is the number of data points, S is the sample skewness, and K is
    the sample kurtosis of the data.
    """
    resids = np.asarray(resids)
    # Calculate residual skewness and kurtosis
    skew = stats.skew(resids, axis=axis)
    kurtosis = 3 + stats.kurtosis(resids, axis=axis)

    # Calculate the Jarque-Bera test for normality
    n = resids.shape[axis]
    jb = (n / 6.) * (skew ** 2 + (1 / 4.) * (kurtosis - 3) ** 2)
    jb_pv = stats.chi2.sf(jb, 2)

    return jb, jb_pv, skew, kurtosis