--Select * 
--From [Portfolio Project].dbo.NashvilleHousing

--Select SaleDateConverted, Convert(Date, Saledate)
--From [Portfolio Project].dbo.NashvilleHousing

--Update NashvilleHousing
--Set SaleDate = Convert(Date, Saledate)

--Alter Table NashvilleHousing
--Add SaleDateConverted Date; 

--Update NashvilleHousing
--Set SaleDateConverted = Convert(Date, Saledate)

--Select  a.ParcelID, a.PropertyAddress, b.ParcelID, b.PropertyAddress, Isnull(a.PropertyAddress, b.PropertyAddress)
--From [Portfolio Project].dbo.NashvilleHousing a 
--Join [Portfolio Project].dbo.NashvilleHousing b 
--ON a.ParcelID = b.ParcelID
--And a.[UniqueID ] <> b.[UniqueID ]
--Where a.PropertyAddress is null  

--Update a
--SET PropertyAddress =  Isnull(a.PropertyAddress, b.PropertyAddress)
--From [Portfolio Project].dbo.NashvilleHousing a 
--Join [Portfolio Project].dbo.NashvilleHousing b 
--ON a.ParcelID = b.ParcelID
--And a.[UniqueID ] <> b.[UniqueID ]

--Select 
--PARSENAME (REplace(OwnerAddress, ',', '.'), 3) AS StreetAddress,
--PARSENAME (REplace(OwnerAddress, ',', '.'), 2) As City,
--PARSENAME (REplace(OwnerAddress, ',', '.'), 1) AS State 
--FRom [Portfolio Project].dbo.NashvilleHousing; 

--ALTER TABLE [Portfolio Project].dbo.NashvilleHousing
--ADD OwnerSplitAddress Nvarchar(255)

--Update [Portfolio Project].dbo.NashvilleHousing
--SET OwnerSplitAddress = PARSENAME (REplace(OwnerAddress, ',', '.'), 3)  

--ALTER TABLE [Portfolio Project].dbo.NashvilleHousing
--ADD OwnerSplitCity Nvarchar(255)

--Update [Portfolio Project].dbo.NashvilleHousing
--SET OwnerSplitAddress = PARSENAME (REplace(OwnerAddress, ',', '.'), 2)  

--ALTER TABLE [Portfolio Project].dbo.NashvilleHousing
--ADD OwnerSplitState Nvarchar(255)

--Update [Portfolio Project].dbo.NashvilleHousing
--SET OwnerSplitState = PARSENAME (REplace(OwnerAddress, ',', '.'), 1)  

--Select * 
--From [Portfolio Project].dbo.NashvilleHousing

--Select Distinct SoldAsVacant, Count(SoldAsVacant)
--From [Portfolio Project].dbo.NashvilleHousing
--Group by SoldAsVacant
--Order by 2; 

--Select SoldAsVacant 
--,Case When SoldAsVacant = 'Y' Then 'YES'
--      When SoldAsVacant = 'N' Then 'No'
--	  Else SoldAsVacant
--	  END
--From [Portfolio Project].dbo.NashvilleHousing 

--Update [Portfolio Project].dbo.NashvilleHousing
--SET SoldAsVacant = Case When SoldAsVacant = 'Y' Then 'YES'
--      When SoldAsVacant = 'N' Then 'No'
--	  Else SoldAsVacant
--	  END
--SELECT * 
--FROM [Portfolio Project].dbo.NashvilleHousing

--WITH RowNumCTE AS (
--    SELECT
--        ROW_NUMBER() OVER (PARTITION BY  ParcelID,
--        PropertyAddress,
--		SalePrice,
--		SaleDate,
--		LegalReference ORDER BY (SELECT 1)) AS RowNum
--    FROM [Portfolio Project].dbo.NashvilleHousing
--)
--Select *
--FROM RowNumCTE WHERE RowNum > 1;

SELECT * 
FROM [Portfolio Project].dbo.NashvilleHousing






