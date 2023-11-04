class Mileage < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '1km以内' },
    { id: 3, name: '1～5km' },
    { id: 4, name: '5～10km' },
    { id: 5, name: '10～15km' },
    { id: 6, name: '15～20km' },
    { id: 7, name: '20km以上' }
  ]
  end