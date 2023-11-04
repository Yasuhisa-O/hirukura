class RequiredTime < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '1時間以内' },
    { id: 3, name: '1～2時間' },
    { id: 4, name: '2～3時間' },
    { id: 5, name: '3～4時間' },
    { id: 6, name: '4～5時間' }
  ]
  end